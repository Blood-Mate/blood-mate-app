// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
// for common
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  DateTime get createdAt =>
      throw _privateConstructorUsedError; // for private(social network based blood donation) post
  int? get depth => throw _privateConstructorUsedError;
  int? get originId =>
      throw _privateConstructorUsedError; // for public (location based blood donation) post
  String? get bloodType => throw _privateConstructorUsedError;
  String? get bloodDonationType => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  int? get longtitude => throw _privateConstructorUsedError;
  int? get latitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {int id,
      String title,
      String content,
      bool isFinished,
      int userId,
      DateTime createdAt,
      int? depth,
      int? originId,
      String? bloodType,
      String? bloodDonationType,
      String? region,
      int? longtitude,
      int? latitude});
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? isFinished = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? depth = freezed,
    Object? originId = freezed,
    Object? bloodType = freezed,
    Object? bloodDonationType = freezed,
    Object? region = freezed,
    Object? longtitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      originId: freezed == originId
          ? _value.originId
          : originId // ignore: cast_nullable_to_non_nullable
              as int?,
      bloodType: freezed == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String?,
      bloodDonationType: freezed == bloodDonationType
          ? _value.bloodDonationType
          : bloodDonationType // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      longtitude: freezed == longtitude
          ? _value.longtitude
          : longtitude // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostCopyWith(_$_Post value, $Res Function(_$_Post) then) =
      __$$_PostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String content,
      bool isFinished,
      int userId,
      DateTime createdAt,
      int? depth,
      int? originId,
      String? bloodType,
      String? bloodDonationType,
      String? region,
      int? longtitude,
      int? latitude});
}

/// @nodoc
class __$$_PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res, _$_Post>
    implements _$$_PostCopyWith<$Res> {
  __$$_PostCopyWithImpl(_$_Post _value, $Res Function(_$_Post) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? isFinished = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? depth = freezed,
    Object? originId = freezed,
    Object? bloodType = freezed,
    Object? bloodDonationType = freezed,
    Object? region = freezed,
    Object? longtitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_$_Post(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      originId: freezed == originId
          ? _value.originId
          : originId // ignore: cast_nullable_to_non_nullable
              as int?,
      bloodType: freezed == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String?,
      bloodDonationType: freezed == bloodDonationType
          ? _value.bloodDonationType
          : bloodDonationType // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      longtitude: freezed == longtitude
          ? _value.longtitude
          : longtitude // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post implements _Post {
  _$_Post(
      {required this.id,
      required this.title,
      required this.content,
      required this.isFinished,
      required this.userId,
      required this.createdAt,
      this.depth,
      this.originId,
      this.bloodType,
      this.bloodDonationType,
      this.region,
      this.longtitude,
      this.latitude});

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

// for common
  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  final bool isFinished;
  @override
  final int userId;
  @override
  final DateTime createdAt;
// for private(social network based blood donation) post
  @override
  final int? depth;
  @override
  final int? originId;
// for public (location based blood donation) post
  @override
  final String? bloodType;
  @override
  final String? bloodDonationType;
  @override
  final String? region;
  @override
  final int? longtitude;
  @override
  final int? latitude;

  @override
  String toString() {
    return 'Post(id: $id, title: $title, content: $content, isFinished: $isFinished, userId: $userId, createdAt: $createdAt, depth: $depth, originId: $originId, bloodType: $bloodType, bloodDonationType: $bloodDonationType, region: $region, longtitude: $longtitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Post &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.originId, originId) ||
                other.originId == originId) &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType) &&
            (identical(other.bloodDonationType, bloodDonationType) ||
                other.bloodDonationType == bloodDonationType) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.longtitude, longtitude) ||
                other.longtitude == longtitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      content,
      isFinished,
      userId,
      createdAt,
      depth,
      originId,
      bloodType,
      bloodDonationType,
      region,
      longtitude,
      latitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostCopyWith<_$_Post> get copyWith =>
      __$$_PostCopyWithImpl<_$_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  factory _Post(
      {required final int id,
      required final String title,
      required final String content,
      required final bool isFinished,
      required final int userId,
      required final DateTime createdAt,
      final int? depth,
      final int? originId,
      final String? bloodType,
      final String? bloodDonationType,
      final String? region,
      final int? longtitude,
      final int? latitude}) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override // for common
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  bool get isFinished;
  @override
  int get userId;
  @override
  DateTime get createdAt;
  @override // for private(social network based blood donation) post
  int? get depth;
  @override
  int? get originId;
  @override // for public (location based blood donation) post
  String? get bloodType;
  @override
  String? get bloodDonationType;
  @override
  String? get region;
  @override
  int? get longtitude;
  @override
  int? get latitude;
  @override
  @JsonKey(ignore: true)
  _$$_PostCopyWith<_$_Post> get copyWith => throw _privateConstructorUsedError;
}
