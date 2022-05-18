import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

part 'user.g.dart';

@JsonSerializable()
class UserLog {
  UserLog({
    required this.name,
    required this.age,
    required this.email,
  });

  Map<String, Object?> toJson() => _$UserLogToJson(this);

  final String name;
  final int age;
  final String email;
}

@Collection<UserLog>('users')
final usersRef = UserLogCollectionReference();

// @freezed
// class UserLog with _$UserLog {
//   const factory UserLog({required String name}) = _User;

//   factory UserLog.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
// }
