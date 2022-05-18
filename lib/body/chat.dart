import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

import '../object/channel.dart';
import '../object/message.dart';
import '../provider/channel.dart';

class ChatPage extends ConsumerWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var iD = ref.watch(channelProvider);
    print("user: " + iD);

    return FirestoreBuilder<MessageQuerySnapshot>(
        ref: channelsRef.doc(iD).messages,
        builder: (context, AsyncSnapshot<MessageQuerySnapshot> snapshot,
            Widget? child) {
          if (snapshot.hasError) {
            return Text('Something went wrong!' + snapshot.error.toString());
          }
          if (!snapshot.hasData) return const Text('Loading Messages...');

          // Access the QuerySnapshot
          MessageQuerySnapshot querySnapshot = snapshot.requireData;

          return ListView.builder(
            itemCount: querySnapshot.docs.length,
            itemBuilder: (context, index) {
              // Access the User instance
              Message message = querySnapshot.docs[index].data;

              return ListTile(
                leading: Text(message.author),
                title: Text(message.text),
                // onTap: () => _handlePressed(user, context),
              );
            },
          );
        });
  }
}
