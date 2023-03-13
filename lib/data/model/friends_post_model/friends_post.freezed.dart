// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friends_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FriendsPost _$FriendsPostFromJson(Map<String, dynamic> json) {
  return _FriendsPost.fromJson(json);
}

/// @nodoc
mixin _$FriendsPost {
  int get private_post_ID => throw _privateConstructorUsedError;
  int get origin_post_ID => throw _privateConstructorUsedError;
  String get user_ID => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get depth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendsPostCopyWith<FriendsPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsPostCopyWith<$Res> {
  factory $FriendsPostCopyWith(
          FriendsPost value, $Res Function(FriendsPost) then) =
      _$FriendsPostCopyWithImpl<$Res, FriendsPost>;
  @useResult
  $Res call(
      {int private_post_ID,
      int origin_post_ID,
      String user_ID,
      String content,
      int depth});
}

/// @nodoc
class _$FriendsPostCopyWithImpl<$Res, $Val extends FriendsPost>
    implements $FriendsPostCopyWith<$Res> {
  _$FriendsPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? private_post_ID = null,
    Object? origin_post_ID = null,
    Object? user_ID = null,
    Object? content = null,
    Object? depth = null,
  }) {
    return _then(_value.copyWith(
      private_post_ID: null == private_post_ID
          ? _value.private_post_ID
          : private_post_ID // ignore: cast_nullable_to_non_nullable
              as int,
      origin_post_ID: null == origin_post_ID
          ? _value.origin_post_ID
          : origin_post_ID // ignore: cast_nullable_to_non_nullable
              as int,
      user_ID: null == user_ID
          ? _value.user_ID
          : user_ID // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FriendsPostCopyWith<$Res>
    implements $FriendsPostCopyWith<$Res> {
  factory _$$_FriendsPostCopyWith(
          _$_FriendsPost value, $Res Function(_$_FriendsPost) then) =
      __$$_FriendsPostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int private_post_ID,
      int origin_post_ID,
      String user_ID,
      String content,
      int depth});
}

/// @nodoc
class __$$_FriendsPostCopyWithImpl<$Res>
    extends _$FriendsPostCopyWithImpl<$Res, _$_FriendsPost>
    implements _$$_FriendsPostCopyWith<$Res> {
  __$$_FriendsPostCopyWithImpl(
      _$_FriendsPost _value, $Res Function(_$_FriendsPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? private_post_ID = null,
    Object? origin_post_ID = null,
    Object? user_ID = null,
    Object? content = null,
    Object? depth = null,
  }) {
    return _then(_$_FriendsPost(
      private_post_ID: null == private_post_ID
          ? _value.private_post_ID
          : private_post_ID // ignore: cast_nullable_to_non_nullable
              as int,
      origin_post_ID: null == origin_post_ID
          ? _value.origin_post_ID
          : origin_post_ID // ignore: cast_nullable_to_non_nullable
              as int,
      user_ID: null == user_ID
          ? _value.user_ID
          : user_ID // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FriendsPost implements _FriendsPost {
  _$_FriendsPost(
      {required this.private_post_ID,
      required this.origin_post_ID,
      required this.user_ID,
      required this.content,
      required this.depth});

  factory _$_FriendsPost.fromJson(Map<String, dynamic> json) =>
      _$$_FriendsPostFromJson(json);

  @override
  final int private_post_ID;
  @override
  final int origin_post_ID;
  @override
  final String user_ID;
  @override
  final String content;
  @override
  final int depth;

  @override
  String toString() {
    return 'FriendsPost(private_post_ID: $private_post_ID, origin_post_ID: $origin_post_ID, user_ID: $user_ID, content: $content, depth: $depth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendsPost &&
            (identical(other.private_post_ID, private_post_ID) ||
                other.private_post_ID == private_post_ID) &&
            (identical(other.origin_post_ID, origin_post_ID) ||
                other.origin_post_ID == origin_post_ID) &&
            (identical(other.user_ID, user_ID) || other.user_ID == user_ID) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.depth, depth) || other.depth == depth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, private_post_ID, origin_post_ID, user_ID, content, depth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendsPostCopyWith<_$_FriendsPost> get copyWith =>
      __$$_FriendsPostCopyWithImpl<_$_FriendsPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FriendsPostToJson(
      this,
    );
  }
}

abstract class _FriendsPost implements FriendsPost {
  factory _FriendsPost(
      {required final int private_post_ID,
      required final int origin_post_ID,
      required final String user_ID,
      required final String content,
      required final int depth}) = _$_FriendsPost;

  factory _FriendsPost.fromJson(Map<String, dynamic> json) =
      _$_FriendsPost.fromJson;

  @override
  int get private_post_ID;
  @override
  int get origin_post_ID;
  @override
  String get user_ID;
  @override
  String get content;
  @override
  int get depth;
  @override
  @JsonKey(ignore: true)
  _$$_FriendsPostCopyWith<_$_FriendsPost> get copyWith =>
      throw _privateConstructorUsedError;
}
