// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ddoptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DDOptions {
  String get title => throw _privateConstructorUsedError;
  String get route => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DDOptionsCopyWith<DDOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DDOptionsCopyWith<$Res> {
  factory $DDOptionsCopyWith(DDOptions value, $Res Function(DDOptions) then) =
      _$DDOptionsCopyWithImpl<$Res>;
  $Res call({String title, String route});
}

/// @nodoc
class _$DDOptionsCopyWithImpl<$Res> implements $DDOptionsCopyWith<$Res> {
  _$DDOptionsCopyWithImpl(this._value, this._then);

  final DDOptions _value;
  // ignore: unused_field
  final $Res Function(DDOptions) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? route = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DDOptionsCopyWith<$Res> implements $DDOptionsCopyWith<$Res> {
  factory _$$_DDOptionsCopyWith(
          _$_DDOptions value, $Res Function(_$_DDOptions) then) =
      __$$_DDOptionsCopyWithImpl<$Res>;
  @override
  $Res call({String title, String route});
}

/// @nodoc
class __$$_DDOptionsCopyWithImpl<$Res> extends _$DDOptionsCopyWithImpl<$Res>
    implements _$$_DDOptionsCopyWith<$Res> {
  __$$_DDOptionsCopyWithImpl(
      _$_DDOptions _value, $Res Function(_$_DDOptions) _then)
      : super(_value, (v) => _then(v as _$_DDOptions));

  @override
  _$_DDOptions get _value => super._value as _$_DDOptions;

  @override
  $Res call({
    Object? title = freezed,
    Object? route = freezed,
  }) {
    return _then(_$_DDOptions(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DDOptions implements _DDOptions {
  _$_DDOptions({required this.title, required this.route});

  @override
  final String title;
  @override
  final String route;

  @override
  String toString() {
    return 'DDOptions(title: $title, route: $route)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DDOptions &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.route, route));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(route));

  @JsonKey(ignore: true)
  @override
  _$$_DDOptionsCopyWith<_$_DDOptions> get copyWith =>
      __$$_DDOptionsCopyWithImpl<_$_DDOptions>(this, _$identity);
}

abstract class _DDOptions implements DDOptions {
  factory _DDOptions(
      {required final String title,
      required final String route}) = _$_DDOptions;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get route => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DDOptionsCopyWith<_$_DDOptions> get copyWith =>
      throw _privateConstructorUsedError;
}
