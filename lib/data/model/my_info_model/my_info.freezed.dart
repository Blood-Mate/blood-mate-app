// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyInfo _$MyInfoFromJson(Map<String, dynamic> json) {
  return _MyInfo.fromJson(json);
}

/// @nodoc
mixin _$MyInfo {
  List<String> get senddingMessages => throw _privateConstructorUsedError;
  List<String> get receivingMessages => throw _privateConstructorUsedError;
  List<String> get awards => throw _privateConstructorUsedError;
  List<int> get donationRequests => throw _privateConstructorUsedError;
  List<int> get successDonations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyInfoCopyWith<MyInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyInfoCopyWith<$Res> {
  factory $MyInfoCopyWith(MyInfo value, $Res Function(MyInfo) then) =
      _$MyInfoCopyWithImpl<$Res, MyInfo>;
  @useResult
  $Res call(
      {List<String> senddingMessages,
      List<String> receivingMessages,
      List<String> awards,
      List<int> donationRequests,
      List<int> successDonations});
}

/// @nodoc
class _$MyInfoCopyWithImpl<$Res, $Val extends MyInfo>
    implements $MyInfoCopyWith<$Res> {
  _$MyInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senddingMessages = null,
    Object? receivingMessages = null,
    Object? awards = null,
    Object? donationRequests = null,
    Object? successDonations = null,
  }) {
    return _then(_value.copyWith(
      senddingMessages: null == senddingMessages
          ? _value.senddingMessages
          : senddingMessages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      receivingMessages: null == receivingMessages
          ? _value.receivingMessages
          : receivingMessages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      awards: null == awards
          ? _value.awards
          : awards // ignore: cast_nullable_to_non_nullable
              as List<String>,
      donationRequests: null == donationRequests
          ? _value.donationRequests
          : donationRequests // ignore: cast_nullable_to_non_nullable
              as List<int>,
      successDonations: null == successDonations
          ? _value.successDonations
          : successDonations // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyInfoCopyWith<$Res> implements $MyInfoCopyWith<$Res> {
  factory _$$_MyInfoCopyWith(_$_MyInfo value, $Res Function(_$_MyInfo) then) =
      __$$_MyInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> senddingMessages,
      List<String> receivingMessages,
      List<String> awards,
      List<int> donationRequests,
      List<int> successDonations});
}

/// @nodoc
class __$$_MyInfoCopyWithImpl<$Res>
    extends _$MyInfoCopyWithImpl<$Res, _$_MyInfo>
    implements _$$_MyInfoCopyWith<$Res> {
  __$$_MyInfoCopyWithImpl(_$_MyInfo _value, $Res Function(_$_MyInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senddingMessages = null,
    Object? receivingMessages = null,
    Object? awards = null,
    Object? donationRequests = null,
    Object? successDonations = null,
  }) {
    return _then(_$_MyInfo(
      senddingMessages: null == senddingMessages
          ? _value._senddingMessages
          : senddingMessages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      receivingMessages: null == receivingMessages
          ? _value._receivingMessages
          : receivingMessages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      awards: null == awards
          ? _value._awards
          : awards // ignore: cast_nullable_to_non_nullable
              as List<String>,
      donationRequests: null == donationRequests
          ? _value._donationRequests
          : donationRequests // ignore: cast_nullable_to_non_nullable
              as List<int>,
      successDonations: null == successDonations
          ? _value._successDonations
          : successDonations // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyInfo implements _MyInfo {
  _$_MyInfo(
      {required final List<String> senddingMessages,
      required final List<String> receivingMessages,
      required final List<String> awards,
      required final List<int> donationRequests,
      required final List<int> successDonations})
      : _senddingMessages = senddingMessages,
        _receivingMessages = receivingMessages,
        _awards = awards,
        _donationRequests = donationRequests,
        _successDonations = successDonations;

  factory _$_MyInfo.fromJson(Map<String, dynamic> json) =>
      _$$_MyInfoFromJson(json);

  final List<String> _senddingMessages;
  @override
  List<String> get senddingMessages {
    if (_senddingMessages is EqualUnmodifiableListView)
      return _senddingMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_senddingMessages);
  }

  final List<String> _receivingMessages;
  @override
  List<String> get receivingMessages {
    if (_receivingMessages is EqualUnmodifiableListView)
      return _receivingMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_receivingMessages);
  }

  final List<String> _awards;
  @override
  List<String> get awards {
    if (_awards is EqualUnmodifiableListView) return _awards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_awards);
  }

  final List<int> _donationRequests;
  @override
  List<int> get donationRequests {
    if (_donationRequests is EqualUnmodifiableListView)
      return _donationRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_donationRequests);
  }

  final List<int> _successDonations;
  @override
  List<int> get successDonations {
    if (_successDonations is EqualUnmodifiableListView)
      return _successDonations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_successDonations);
  }

  @override
  String toString() {
    return 'MyInfo(senddingMessages: $senddingMessages, receivingMessages: $receivingMessages, awards: $awards, donationRequests: $donationRequests, successDonations: $successDonations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyInfo &&
            const DeepCollectionEquality()
                .equals(other._senddingMessages, _senddingMessages) &&
            const DeepCollectionEquality()
                .equals(other._receivingMessages, _receivingMessages) &&
            const DeepCollectionEquality().equals(other._awards, _awards) &&
            const DeepCollectionEquality()
                .equals(other._donationRequests, _donationRequests) &&
            const DeepCollectionEquality()
                .equals(other._successDonations, _successDonations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_senddingMessages),
      const DeepCollectionEquality().hash(_receivingMessages),
      const DeepCollectionEquality().hash(_awards),
      const DeepCollectionEquality().hash(_donationRequests),
      const DeepCollectionEquality().hash(_successDonations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyInfoCopyWith<_$_MyInfo> get copyWith =>
      __$$_MyInfoCopyWithImpl<_$_MyInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyInfoToJson(
      this,
    );
  }
}

abstract class _MyInfo implements MyInfo {
  factory _MyInfo(
      {required final List<String> senddingMessages,
      required final List<String> receivingMessages,
      required final List<String> awards,
      required final List<int> donationRequests,
      required final List<int> successDonations}) = _$_MyInfo;

  factory _MyInfo.fromJson(Map<String, dynamic> json) = _$_MyInfo.fromJson;

  @override
  List<String> get senddingMessages;
  @override
  List<String> get receivingMessages;
  @override
  List<String> get awards;
  @override
  List<int> get donationRequests;
  @override
  List<int> get successDonations;
  @override
  @JsonKey(ignore: true)
  _$$_MyInfoCopyWith<_$_MyInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
