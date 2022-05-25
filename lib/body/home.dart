import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

import '../object/channel.dart';
import '../provider/user.dart';
import '../scaffolding.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // void _handlePressed(String iD, BuildContext context) async {
    //   print("open channel $iD");

    //   ref.read(channelProvider.notifier).setState(iD);

    //   Navigator.pushNamed(context, "/chat");
    // }

    return Scaffolding(
        body: FirestoreBuilder<ChannelQuerySnapshot>(
            ref: channelsRef.whereUsers(arrayContainsAny: [
              (ref.read(userProvider).value?.uid ?? 'not logged in')
            ]),
            builder: (context, AsyncSnapshot<ChannelQuerySnapshot> snapshot,
                Widget? child) {
              if (snapshot.hasError) {
                return Text('Something went wrong!${snapshot.error}');
              }
              if (!snapshot.hasData) return const Text('Loading users...');

              // Access the QuerySnapshot
              ChannelQuerySnapshot querySnapshot = snapshot.requireData;

              return ListView.builder(
                itemCount: querySnapshot.docs.length,
                itemBuilder: (context, index) {
                  // Access the User instance
                  String test = querySnapshot.docs[index].reference.id;

                  return ListTile(
                    leading: Text(test),
                    // title: Text(channels.users.toString()),
                    // onTap: () => _handlePressed(test, context),
                  );
                },
              );
            }));
  }
}
