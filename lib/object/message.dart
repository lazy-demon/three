import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable()
class Message {
  Message({
    required this.text,
    required this.type,
    required this.author,
  });

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  final String text;
  final int type;
  final String author;

  Map<String, Object?> toJson() => _$MessageToJson(this);
}
