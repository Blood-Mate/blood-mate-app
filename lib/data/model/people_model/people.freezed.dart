// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'people.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

People _$PeopleFromJson(Map<String, dynamic> json) {
  return _People.fromJson(json);
}

/// @nodoc
mixin _$People {
  int get id =>
      throw _privateConstructorUsedError; // guiardianID? // requstorId?
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  bool? get isUser => throw _privateConstructorUsedError;
  bool? get isSendingTarget => throw _privateConstructorUsedError;
  String? get bloodType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeopleCopyWith<People> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleCopyWith<$Res> {
  factory $PeopleCopyWith(People value, $Res Function(People) then) =
      _$PeopleCopyWithImpl<$Res, People>;
  @useResult
  $Res call(
      {int id,
      String name,
      String phoneNumber,
      bool? isUser,
      bool? isSendingTarget,
      String? bloodType});
}

/// @nodoc
class _$PeopleCopyWithImpl<$Res, $Val extends People>
    implements $PeopleCopyWith<$Res> {
  _$PeopleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? isUser = freezed,
    Object? isSendingTarget = freezed,
    Object? bloodType = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isUser: freezed == isUser
          ? _value.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSendingTarget: freezed == isSendingTarget
          ? _value.isSendingTarget
          : isSendingTarget // ignore: cast_nullable_to_non_nullable
              as bool?,
      bloodType: freezed == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PeopleCopyWith<$Res> implements $PeopleCopyWith<$Res> {
  factory _$$_PeopleCopyWith(_$_People value, $Res Function(_$_People) then) =
      __$$_PeopleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String phoneNumber,
      bool? isUser,
      bool? isSendingTarget,
      String? bloodType});
}

/// @nodoc
class __$$_PeopleCopyWithImpl<$Res>
    extends _$PeopleCopyWithImpl<$Res, _$_People>
    implements _$$_PeopleCopyWith<$Res> {
  __$$_PeopleCopyWithImpl(_$_People _value, $Res Function(_$_People) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? isUser = freezed,
    Object? isSendingTarget = freezed,
    Object? bloodType = freezed,
  }) {
    return _then(_$_People(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isUser: freezed == isUser
          ? _value.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSendingTarget: freezed == isSendingTarget
          ? _value.isSendingTarget
          : isSendingTarget // ignore: cast_nullable_to_non_nullable
              as bool?,
      bloodType: freezed == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_People implements _People {
  _$_People(
      {required this.id,
      required this.name,
      required this.phoneNumber,
      this.isUser,
      this.isSendingTarget,
      this.bloodType});

  factory _$_People.fromJson(Map<String, dynamic> json) =>
      _$$_PeopleFromJson(json);

  @override
  final int id;
// guiardianID? // requstorId?
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final bool? isUser;
  @override
  final bool? isSendingTarget;
  @override
  final String? bloodType;

  @override
  String toString() {
    return 'People(id: $id, name: $name, phoneNumber: $phoneNumber, isUser: $isUser, isSendingTarget: $isSendingTarget, bloodType: $bloodType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_People &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isUser, isUser) || other.isUser == isUser) &&
            (identical(other.isSendingTarget, isSendingTarget) ||
                other.isSendingTarget == isSendingTarget) &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, phoneNumber, isUser, isSendingTarget, bloodType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PeopleCopyWith<_$_People> get copyWith =>
      __$$_PeopleCopyWithImpl<_$_People>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeopleToJson(
      this,
    );
  }
}

abstract class _People implements People {
  factory _People(
      {required final int id,
      required final String name,
      required final String phoneNumber,
      final bool? isUser,
      final bool? isSendingTarget,
      final String? bloodType}) = _$_People;

  factory _People.fromJson(Map<String, dynamic> json) = _$_People.fromJson;

  @override
  int get id;
  @override // guiardianID? // requstorId?
  String get name;
  @override
  String get phoneNumber;
  @override
  bool? get isUser;
  @override
  bool? get isSendingTarget;
  @override
  String? get bloodType;
  @override
  @JsonKey(ignore: true)
  _$$_PeopleCopyWith<_$_People> get copyWith =>
      throw _privateConstructorUsedError;
}
