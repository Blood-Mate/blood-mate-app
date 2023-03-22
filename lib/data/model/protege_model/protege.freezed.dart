// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'protege.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Protege _$ProtegeFromJson(Map<String, dynamic> json) {
  return _Protege.fromJson(json);
}

/// @nodoc
mixin _$Protege {
  int get id => throw _privateConstructorUsedError;
  int get requstorId => throw _privateConstructorUsedError; //requestorId
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get bloodType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProtegeCopyWith<Protege> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProtegeCopyWith<$Res> {
  factory $ProtegeCopyWith(Protege value, $Res Function(Protege) then) =
      _$ProtegeCopyWithImpl<$Res, Protege>;
  @useResult
  $Res call(
      {int id,
      int requstorId,
      String name,
      String phoneNumber,
      String bloodType});
}

/// @nodoc
class _$ProtegeCopyWithImpl<$Res, $Val extends Protege>
    implements $ProtegeCopyWith<$Res> {
  _$ProtegeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? requstorId = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? bloodType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      requstorId: null == requstorId
          ? _value.requstorId
          : requstorId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bloodType: null == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProtegeCopyWith<$Res> implements $ProtegeCopyWith<$Res> {
  factory _$$_ProtegeCopyWith(
          _$_Protege value, $Res Function(_$_Protege) then) =
      __$$_ProtegeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int requstorId,
      String name,
      String phoneNumber,
      String bloodType});
}

/// @nodoc
class __$$_ProtegeCopyWithImpl<$Res>
    extends _$ProtegeCopyWithImpl<$Res, _$_Protege>
    implements _$$_ProtegeCopyWith<$Res> {
  __$$_ProtegeCopyWithImpl(_$_Protege _value, $Res Function(_$_Protege) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? requstorId = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? bloodType = null,
  }) {
    return _then(_$_Protege(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      requstorId: null == requstorId
          ? _value.requstorId
          : requstorId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bloodType: null == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Protege implements _Protege {
  _$_Protege(
      {required this.id,
      required this.requstorId,
      required this.name,
      required this.phoneNumber,
      required this.bloodType});

  factory _$_Protege.fromJson(Map<String, dynamic> json) =>
      _$$_ProtegeFromJson(json);

  @override
  final int id;
  @override
  final int requstorId;
//requestorId
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String bloodType;

  @override
  String toString() {
    return 'Protege(id: $id, requstorId: $requstorId, name: $name, phoneNumber: $phoneNumber, bloodType: $bloodType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Protege &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.requstorId, requstorId) ||
                other.requstorId == requstorId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, requstorId, name, phoneNumber, bloodType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProtegeCopyWith<_$_Protege> get copyWith =>
      __$$_ProtegeCopyWithImpl<_$_Protege>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProtegeToJson(
      this,
    );
  }
}

abstract class _Protege implements Protege {
  factory _Protege(
      {required final int id,
      required final int requstorId,
      required final String name,
      required final String phoneNumber,
      required final String bloodType}) = _$_Protege;

  factory _Protege.fromJson(Map<String, dynamic> json) = _$_Protege.fromJson;

  @override
  int get id;
  @override
  int get requstorId;
  @override //requestorId
  String get name;
  @override
  String get phoneNumber;
  @override
  String get bloodType;
  @override
  @JsonKey(ignore: true)
  _$$_ProtegeCopyWith<_$_Protege> get copyWith =>
      throw _privateConstructorUsedError;
}
