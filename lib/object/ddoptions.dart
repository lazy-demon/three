import 'package:freezed_annotation/freezed_annotation.dart';

part 'ddoptions.freezed.dart';

@freezed
class DDOptions with _$DDOptions {
  factory DDOptions({
    required String title,
    required String route,
  }) = _DDOptions;
}
