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
  String get content =>
      throw _privateConstructorUsedError; // for private(social network based blood donation) post
  int? get depth => throw _privateConstructorUsedError;
  int? get originId => throw _privateConstructorUsedError;
  String? get UserId => throw _privateConstructorUsedError;
  bool? get isFinished => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get shares =>
      throw _privateConstructorUsedError; // for public (location based blood donation) post
  String? get title => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get bloodType => throw _privateConstructorUsedError;
  String? get bloodDonationType => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get longtitude => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get bumpAt => throw _privateConstructorUsedError;
  bool? get expired => throw _privateConstructorUsedError;

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
      String content,
      int? depth,
      int? originId,
      String? UserId,
      bool? isFinished,
      List<Map<String, dynamic>>? shares,
      String? title,
      String? imageUrl,
      String? bloodType,
      String? bloodDonationType,
      String? region,
      String? longtitude,
      String? latitude,
      DateTime? createdAt,
      DateTime? bumpAt,
      bool? expired});
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
    Object? content = null,
    Object? depth = freezed,
    Object? originId = freezed,
    Object? UserId = freezed,
    Object? isFinished = freezed,
    Object? shares = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? bloodType = freezed,
    Object? bloodDonationType = freezed,
    Object? region = freezed,
    Object? longtitude = freezed,
    Object? latitude = freezed,
    Object? createdAt = freezed,
    Object? bumpAt = freezed,
    Object? expired = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      originId: freezed == originId
          ? _value.originId
          : originId // ignore: cast_nullable_to_non_nullable
              as int?,
      UserId: freezed == UserId
          ? _value.UserId
          : UserId // ignore: cast_nullable_to_non_nullable
              as String?,
      isFinished: freezed == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool?,
      shares: freezed == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bumpAt: freezed == bumpAt
          ? _value.bumpAt
          : bumpAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expired: freezed == expired
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      String content,
      int? depth,
      int? originId,
      String? UserId,
      bool? isFinished,
      List<Map<String, dynamic>>? shares,
      String? title,
      String? imageUrl,
      String? bloodType,
      String? bloodDonationType,
      String? region,
      String? longtitude,
      String? latitude,
      DateTime? createdAt,
      DateTime? bumpAt,
      bool? expired});
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
    Object? content = null,
    Object? depth = freezed,
    Object? originId = freezed,
    Object? UserId = freezed,
    Object? isFinished = freezed,
    Object? shares = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? bloodType = freezed,
    Object? bloodDonationType = freezed,
    Object? region = freezed,
    Object? longtitude = freezed,
    Object? latitude = freezed,
    Object? createdAt = freezed,
    Object? bumpAt = freezed,
    Object? expired = freezed,
  }) {
    return _then(_$_Post(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      originId: freezed == originId
          ? _value.originId
          : originId // ignore: cast_nullable_to_non_nullable
              as int?,
      UserId: freezed == UserId
          ? _value.UserId
          : UserId // ignore: cast_nullable_to_non_nullable
              as String?,
      isFinished: freezed == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool?,
      shares: freezed == shares
          ? _value._shares
          : shares // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bumpAt: freezed == bumpAt
          ? _value.bumpAt
          : bumpAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expired: freezed == expired
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post implements _Post {
  _$_Post(
      {required this.id,
      required this.content,
      this.depth,
      this.originId,
      this.UserId,
      this.isFinished,
      final List<Map<String, dynamic>>? shares,
      this.title,
      this.imageUrl,
      this.bloodType,
      this.bloodDonationType,
      this.region,
      this.longtitude,
      this.latitude,
      this.createdAt,
      this.bumpAt,
      this.expired})
      : _shares = shares;

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

// for common
  @override
  final int id;
  @override
  final String content;
// for private(social network based blood donation) post
  @override
  final int? depth;
  @override
  final int? originId;
  @override
  final String? UserId;
  @override
  final bool? isFinished;
  final List<Map<String, dynamic>>? _shares;
  @override
  List<Map<String, dynamic>>? get shares {
    final value = _shares;
    if (value == null) return null;
    if (_shares is EqualUnmodifiableListView) return _shares;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// for public (location based blood donation) post
  @override
  final String? title;
  @override
  final String? imageUrl;
  @override
  final String? bloodType;
  @override
  final String? bloodDonationType;
  @override
  final String? region;
  @override
  final String? longtitude;
  @override
  final String? latitude;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? bumpAt;
  @override
  final bool? expired;

  @override
  String toString() {
    return 'Post(id: $id, content: $content, depth: $depth, originId: $originId, UserId: $UserId, isFinished: $isFinished, shares: $shares, title: $title, imageUrl: $imageUrl, bloodType: $bloodType, bloodDonationType: $bloodDonationType, region: $region, longtitude: $longtitude, latitude: $latitude, createdAt: $createdAt, bumpAt: $bumpAt, expired: $expired)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Post &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.originId, originId) ||
                other.originId == originId) &&
            (identical(other.UserId, UserId) || other.UserId == UserId) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            const DeepCollectionEquality().equals(other._shares, _shares) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType) &&
            (identical(other.bloodDonationType, bloodDonationType) ||
                other.bloodDonationType == bloodDonationType) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.longtitude, longtitude) ||
                other.longtitude == longtitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.bumpAt, bumpAt) || other.bumpAt == bumpAt) &&
            (identical(other.expired, expired) || other.expired == expired));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      depth,
      originId,
      UserId,
      isFinished,
      const DeepCollectionEquality().hash(_shares),
      title,
      imageUrl,
      bloodType,
      bloodDonationType,
      region,
      longtitude,
      latitude,
      createdAt,
      bumpAt,
      expired);

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
      required final String content,
      final int? depth,
      final int? originId,
      final String? UserId,
      final bool? isFinished,
      final List<Map<String, dynamic>>? shares,
      final String? title,
      final String? imageUrl,
      final String? bloodType,
      final String? bloodDonationType,
      final String? region,
      final String? longtitude,
      final String? latitude,
      final DateTime? createdAt,
      final DateTime? bumpAt,
      final bool? expired}) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override // for common
  int get id;
  @override
  String get content;
  @override // for private(social network based blood donation) post
  int? get depth;
  @override
  int? get originId;
  @override
  String? get UserId;
  @override
  bool? get isFinished;
  @override
  List<Map<String, dynamic>>? get shares;
  @override // for public (location based blood donation) post
  String? get title;
  @override
  String? get imageUrl;
  @override
  String? get bloodType;
  @override
  String? get bloodDonationType;
  @override
  String? get region;
  @override
  String? get longtitude;
  @override
  String? get latitude;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get bumpAt;
  @override
  bool? get expired;
  @override
  @JsonKey(ignore: true)
  _$$_PostCopyWith<_$_Post> get copyWith => throw _privateConstructorUsedError;
}
