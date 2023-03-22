// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guardian.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Guardian _$GuardianFromJson(Map<String, dynamic> json) {
  return _Guardian.fromJson(json);
}

/// @nodoc
mixin _$Guardian {
  int get id => throw _privateConstructorUsedError;
  int get guardianId => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get bloodType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuardianCopyWith<Guardian> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuardianCopyWith<$Res> {
  factory $GuardianCopyWith(Guardian value, $Res Function(Guardian) then) =
      _$GuardianCopyWithImpl<$Res, Guardian>;
  @useResult
  $Res call(
      {int id,
      int guardianId,
      String phoneNumber,
      String name,
      String bloodType});
}

/// @nodoc
class _$GuardianCopyWithImpl<$Res, $Val extends Guardian>
    implements $GuardianCopyWith<$Res> {
  _$GuardianCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? guardianId = null,
    Object? phoneNumber = null,
    Object? name = null,
    Object? bloodType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      guardianId: null == guardianId
          ? _value.guardianId
          : guardianId // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bloodType: null == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuardianCopyWith<$Res> implements $GuardianCopyWith<$Res> {
  factory _$$_GuardianCopyWith(
          _$_Guardian value, $Res Function(_$_Guardian) then) =
      __$$_GuardianCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int guardianId,
      String phoneNumber,
      String name,
      String bloodType});
}

/// @nodoc
class __$$_GuardianCopyWithImpl<$Res>
    extends _$GuardianCopyWithImpl<$Res, _$_Guardian>
    implements _$$_GuardianCopyWith<$Res> {
  __$$_GuardianCopyWithImpl(
      _$_Guardian _value, $Res Function(_$_Guardian) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? guardianId = null,
    Object? phoneNumber = null,
    Object? name = null,
    Object? bloodType = null,
  }) {
    return _then(_$_Guardian(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      guardianId: null == guardianId
          ? _value.guardianId
          : guardianId // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$_Guardian implements _Guardian {
  _$_Guardian(
      {required this.id,
      required this.guardianId,
      required this.phoneNumber,
      required this.name,
      required this.bloodType});

  factory _$_Guardian.fromJson(Map<String, dynamic> json) =>
      _$$_GuardianFromJson(json);

  @override
  final int id;
  @override
  final int guardianId;
  @override
  final String phoneNumber;
  @override
  final String name;
  @override
  final String bloodType;

  @override
  String toString() {
    return 'Guardian(id: $id, guardianId: $guardianId, phoneNumber: $phoneNumber, name: $name, bloodType: $bloodType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Guardian &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.guardianId, guardianId) ||
                other.guardianId == guardianId) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, guardianId, phoneNumber, name, bloodType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuardianCopyWith<_$_Guardian> get copyWith =>
      __$$_GuardianCopyWithImpl<_$_Guardian>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuardianToJson(
      this,
    );
  }
}

abstract class _Guardian implements Guardian {
  factory _Guardian(
      {required final int id,
      required final int guardianId,
      required final String phoneNumber,
      required final String name,
      required final String bloodType}) = _$_Guardian;

  factory _Guardian.fromJson(Map<String, dynamic> json) = _$_Guardian.fromJson;

  @override
  int get id;
  @override
  int get guardianId;
  @override
  String get phoneNumber;
  @override
  String get name;
  @override
  String get bloodType;
  @override
  @JsonKey(ignore: true)
  _$$_GuardianCopyWith<_$_Guardian> get copyWith =>
      throw _privateConstructorUsedError;
}
