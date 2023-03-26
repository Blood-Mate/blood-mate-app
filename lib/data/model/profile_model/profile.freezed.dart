// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get profileImageUrl => throw _privateConstructorUsedError;
  String get bloodType => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  List<Post> get publicPosts => throw _privateConstructorUsedError;
  List<Post> get privatePosts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? profileImageUrl,
      String bloodType,
      String phoneNumber,
      List<Post> publicPosts,
      List<Post> privatePosts});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profileImageUrl = freezed,
    Object? bloodType = null,
    Object? phoneNumber = null,
    Object? publicPosts = null,
    Object? privatePosts = null,
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
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bloodType: null == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      publicPosts: null == publicPosts
          ? _value.publicPosts
          : publicPosts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      privatePosts: null == privatePosts
          ? _value.privatePosts
          : privatePosts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$_ProfileCopyWith(
          _$_Profile value, $Res Function(_$_Profile) then) =
      __$$_ProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? profileImageUrl,
      String bloodType,
      String phoneNumber,
      List<Post> publicPosts,
      List<Post> privatePosts});
}

/// @nodoc
class __$$_ProfileCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$_Profile>
    implements _$$_ProfileCopyWith<$Res> {
  __$$_ProfileCopyWithImpl(_$_Profile _value, $Res Function(_$_Profile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profileImageUrl = freezed,
    Object? bloodType = null,
    Object? phoneNumber = null,
    Object? publicPosts = null,
    Object? privatePosts = null,
  }) {
    return _then(_$_Profile(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bloodType: null == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      publicPosts: null == publicPosts
          ? _value._publicPosts
          : publicPosts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      privatePosts: null == privatePosts
          ? _value._privatePosts
          : privatePosts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Profile implements _Profile {
  _$_Profile(
      {required this.id,
      required this.name,
      this.profileImageUrl,
      required this.bloodType,
      required this.phoneNumber,
      required final List<Post> publicPosts,
      required final List<Post> privatePosts})
      : _publicPosts = publicPosts,
        _privatePosts = privatePosts;

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? profileImageUrl;
  @override
  final String bloodType;
  @override
  final String phoneNumber;
  final List<Post> _publicPosts;
  @override
  List<Post> get publicPosts {
    if (_publicPosts is EqualUnmodifiableListView) return _publicPosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_publicPosts);
  }

  final List<Post> _privatePosts;
  @override
  List<Post> get privatePosts {
    if (_privatePosts is EqualUnmodifiableListView) return _privatePosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_privatePosts);
  }

  @override
  String toString() {
    return 'Profile(id: $id, name: $name, profileImageUrl: $profileImageUrl, bloodType: $bloodType, phoneNumber: $phoneNumber, publicPosts: $publicPosts, privatePosts: $privatePosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other._publicPosts, _publicPosts) &&
            const DeepCollectionEquality()
                .equals(other._privatePosts, _privatePosts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      profileImageUrl,
      bloodType,
      phoneNumber,
      const DeepCollectionEquality().hash(_publicPosts),
      const DeepCollectionEquality().hash(_privatePosts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      __$$_ProfileCopyWithImpl<_$_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileToJson(
      this,
    );
  }
}

abstract class _Profile implements Profile {
  factory _Profile(
      {required final int id,
      required final String name,
      final String? profileImageUrl,
      required final String bloodType,
      required final String phoneNumber,
      required final List<Post> publicPosts,
      required final List<Post> privatePosts}) = _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get profileImageUrl;
  @override
  String get bloodType;
  @override
  String get phoneNumber;
  @override
  List<Post> get publicPosts;
  @override
  List<Post> get privatePosts;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}
