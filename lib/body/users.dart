import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:three/scaffolding.dart';
import '../object/channel.dart';
import '../object/user.dart';
import '../provider/channel.dart';
import '../provider/user.dart';

class UsersPage extends ConsumerWidget {
  const UsersPage({Key? key}) : super(key: key);

  static const colors = [
    Color(0xffff6767),
    Color(0xff66e0da),
    Color(0xfff5a2d9),
    Color(0xfff0c722),
    Color(0xff6a85e5),
    Color(0xfffd9a6f),
    Color(0xff92db6e),
    Color(0xff73b8e5),
    Color(0xfffd7590),
    Color(0xffc78ae5),
  ];

  Color getUserAvatarNameColor(user) {
    final index = user.id.hashCode % colors.length;

    return colors[index];
  }

  String getUserName(user) =>
      '${user.firstName ?? ''} ${user.lastName ?? ''}'.trim();

  Widget _buildAvatar(user) {
    final color = getUserAvatarNameColor(user);
    final hasImage = user.imageUrl != null;
    final name = getUserName(user);

    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: CircleAvatar(
        backgroundColor: hasImage ? Colors.transparent : color,
        backgroundImage: hasImage ? NetworkImage(user.imageUrl!) : null,
        radius: 20,
        child: !hasImage
            ? Text(
                name.isEmpty ? '' : name[0].toUpperCase(),
                style: const TextStyle(color: Colors.white),
              )
            : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String userID = ref.watch(userProvider).value!.uid;

    void _handlePressed(String iD, BuildContext context) async {
      var list = [userID, iD];
      list.sort();

      channelsRef.whereUsers(isEqualTo: list).get().then((snapshot) {
        if (snapshot.docs.isEmpty) {
          channelsRef.add(
            Channel(
              users: list,
            ),
          );

          _handlePressed(iD, context);
        } else {
          ref.read(channelProvider.notifier).setState(snapshot.docs.single.id);
          Navigator.pushNamed(context, "/chat");
        }
      });
    }

    // void _handlePressed(
    //     UserLogDocumentSnapshot otherUser, BuildContext context) async {
    //   // final room = await FirebaseChatCore.instance.createRoom(otherUser);
    //   // print("open chat with $iD");

    //   Navigator.of(context).pop();

    //   channelsRef
    //       .whereUsers(
    //           isEqualTo: [ref.watch(userProvider).value!.uid, otherUser.id])
    //       .get()
    //       .then((snapshot) {
    //         ref
    //             .read(channelProvider.notifier)
    //             .setState(snapshot.docs.single.id);

    //         if (snapshot.docs.isEmpty) {
    //           print("creating channel");
    //           channelsRef.add(
    //             Channel(
    //               users: [ref.watch(userProvider).value!.uid, otherUser.id],
    //             ),
    //           );

    //           _handlePressed(otherUser, context);
    //         } else {
    //           Navigator.pushNamed(context, "/chat");
    //         }
    //       });
    // }

    return Scaffolding(
        body: FirestoreBuilder<UserLogQuerySnapshot>(
            ref: usersRef,
            builder: (context, AsyncSnapshot<UserLogQuerySnapshot> snapshot,
                Widget? child) {
              if (snapshot.hasError) {
                return Text('Something went wrong!${snapshot.error}');
              }
              if (!snapshot.hasData) return const Text('Loading users...');

              // Access the QuerySnapshot
              UserLogQuerySnapshot querySnapshot = snapshot.requireData;

              return ListView.builder(
                itemCount: querySnapshot.docs.length,
                itemBuilder: (context, index) {
                  // Access the User instance
                  UserLog user = querySnapshot.docs[index].data;
                  String userid = querySnapshot.docs[index].reference.id;

                  return ListTile(
                    leading: Text(userid),
                    title: Text(user.name),
                    onTap: () => _handlePressed(userid, context),
                  );
                },
              );
            }));
  }
}
