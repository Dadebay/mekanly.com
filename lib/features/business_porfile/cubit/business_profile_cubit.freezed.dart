// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BusinessProfileState {
// ignore: strict_raw_type
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  BusinessProfilesResponse? get response => throw _privateConstructorUsedError;
  BusinessProfileCategoryResponse? get categoryResponse =>
      throw _privateConstructorUsedError;

  /// Create a copy of BusinessProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessProfileStateCopyWith<BusinessProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessProfileStateCopyWith<$Res> {
  factory $BusinessProfileStateCopyWith(BusinessProfileState value,
          $Res Function(BusinessProfileState) then) =
      _$BusinessProfileStateCopyWithImpl<$Res, BusinessProfileState>;
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      BusinessProfilesResponse? response,
      BusinessProfileCategoryResponse? categoryResponse});

  $BaseStatusCopyWith<dynamic, $Res> get status;
  $BusinessProfilesResponseCopyWith<$Res>? get response;
  $BusinessProfileCategoryResponseCopyWith<$Res>? get categoryResponse;
}

/// @nodoc
class _$BusinessProfileStateCopyWithImpl<$Res,
        $Val extends BusinessProfileState>
    implements $BusinessProfileStateCopyWith<$Res> {
  _$BusinessProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? response = freezed,
    Object? categoryResponse = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BusinessProfilesResponse?,
      categoryResponse: freezed == categoryResponse
          ? _value.categoryResponse
          : categoryResponse // ignore: cast_nullable_to_non_nullable
              as BusinessProfileCategoryResponse?,
    ) as $Val);
  }

  /// Create a copy of BusinessProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<dynamic, $Res> get status {
    return $BaseStatusCopyWith<dynamic, $Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of BusinessProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessProfilesResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $BusinessProfilesResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }

  /// Create a copy of BusinessProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessProfileCategoryResponseCopyWith<$Res>? get categoryResponse {
    if (_value.categoryResponse == null) {
      return null;
    }

    return $BusinessProfileCategoryResponseCopyWith<$Res>(
        _value.categoryResponse!, (value) {
      return _then(_value.copyWith(categoryResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BusinessProfileStateImplCopyWith<$Res>
    implements $BusinessProfileStateCopyWith<$Res> {
  factory _$$BusinessProfileStateImplCopyWith(_$BusinessProfileStateImpl value,
          $Res Function(_$BusinessProfileStateImpl) then) =
      __$$BusinessProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      BusinessProfilesResponse? response,
      BusinessProfileCategoryResponse? categoryResponse});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
  @override
  $BusinessProfilesResponseCopyWith<$Res>? get response;
  @override
  $BusinessProfileCategoryResponseCopyWith<$Res>? get categoryResponse;
}

/// @nodoc
class __$$BusinessProfileStateImplCopyWithImpl<$Res>
    extends _$BusinessProfileStateCopyWithImpl<$Res, _$BusinessProfileStateImpl>
    implements _$$BusinessProfileStateImplCopyWith<$Res> {
  __$$BusinessProfileStateImplCopyWithImpl(_$BusinessProfileStateImpl _value,
      $Res Function(_$BusinessProfileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? response = freezed,
    Object? categoryResponse = freezed,
  }) {
    return _then(_$BusinessProfileStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BusinessProfilesResponse?,
      categoryResponse: freezed == categoryResponse
          ? _value.categoryResponse
          : categoryResponse // ignore: cast_nullable_to_non_nullable
              as BusinessProfileCategoryResponse?,
    ));
  }
}

/// @nodoc

class _$BusinessProfileStateImpl extends _BusinessProfileState {
  const _$BusinessProfileStateImpl(
      {this.status = const BaseStatus.initial(),
      this.response,
      this.categoryResponse})
      : super._();

// ignore: strict_raw_type
  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  @override
  final BusinessProfilesResponse? response;
  @override
  final BusinessProfileCategoryResponse? categoryResponse;

  @override
  String toString() {
    return 'BusinessProfileState(status: $status, response: $response, categoryResponse: $categoryResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessProfileStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.categoryResponse, categoryResponse) ||
                other.categoryResponse == categoryResponse));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, response, categoryResponse);

  /// Create a copy of BusinessProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessProfileStateImplCopyWith<_$BusinessProfileStateImpl>
      get copyWith =>
          __$$BusinessProfileStateImplCopyWithImpl<_$BusinessProfileStateImpl>(
              this, _$identity);
}

abstract class _BusinessProfileState extends BusinessProfileState {
  const factory _BusinessProfileState(
          {final BaseStatus<dynamic> status,
          final BusinessProfilesResponse? response,
          final BusinessProfileCategoryResponse? categoryResponse}) =
      _$BusinessProfileStateImpl;
  const _BusinessProfileState._() : super._();

// ignore: strict_raw_type
  @override
  BaseStatus<dynamic> get status;
  @override
  BusinessProfilesResponse? get response;
  @override
  BusinessProfileCategoryResponse? get categoryResponse;

  /// Create a copy of BusinessProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessProfileStateImplCopyWith<_$BusinessProfileStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
