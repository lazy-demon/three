import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

import 'message.dart';

part 'channel.g.dart';

@JsonSerializable()
class Channel {
  Channel({
    required this.users,
  });

  final List users;
}

@Collection<Channel>('channels')
@Collection<Message>('channels/*/messages')
final channelsRef = ChannelCollectionReference();
