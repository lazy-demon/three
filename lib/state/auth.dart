import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState.unauthenticated(String data) = UnAuthenticated;
  factory AuthState.authenticated(String data) = Authenticated;
  factory AuthState.loading(String data) = Loading;
  factory AuthState.error(String data) = Error;
}

// ! $ flutter pub run build_runner watch --delete-conflicting-outputs