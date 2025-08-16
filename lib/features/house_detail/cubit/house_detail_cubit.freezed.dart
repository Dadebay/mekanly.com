// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'house_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HouseDetailState {
// ignore: inference_failure_on_instance_creation, strict_raw_type
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  HouseDetailResponse? get response => throw _privateConstructorUsedError;

  /// Create a copy of HouseDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HouseDetailStateCopyWith<HouseDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseDetailStateCopyWith<$Res> {
  factory $HouseDetailStateCopyWith(
          HouseDetailState value, $Res Function(HouseDetailState) then) =
      _$HouseDetailStateCopyWithImpl<$Res, HouseDetailState>;
  @useResult
  $Res call({BaseStatus<dynamic> status, HouseDetailResponse? response});

  $BaseStatusCopyWith<dynamic, $Res> get status;
  $HouseDetailResponseCopyWith<$Res>? get response;
}

/// @nodoc
class _$HouseDetailStateCopyWithImpl<$Res, $Val extends HouseDetailState>
    implements $HouseDetailStateCopyWith<$Res> {
  _$HouseDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HouseDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as HouseDetailResponse?,
    ) as $Val);
  }

  /// Create a copy of HouseDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<dynamic, $Res> get status {
    return $BaseStatusCopyWith<dynamic, $Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of HouseDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HouseDetailResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $HouseDetailResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HouseDetailStateImplCopyWith<$Res>
    implements $HouseDetailStateCopyWith<$Res> {
  factory _$$HouseDetailStateImplCopyWith(_$HouseDetailStateImpl value,
          $Res Function(_$HouseDetailStateImpl) then) =
      __$$HouseDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status, HouseDetailResponse? response});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
  @override
  $HouseDetailResponseCopyWith<$Res>? get response;
}

/// @nodoc
class __$$HouseDetailStateImplCopyWithImpl<$Res>
    extends _$HouseDetailStateCopyWithImpl<$Res, _$HouseDetailStateImpl>
    implements _$$HouseDetailStateImplCopyWith<$Res> {
  __$$HouseDetailStateImplCopyWithImpl(_$HouseDetailStateImpl _value,
      $Res Function(_$HouseDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HouseDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? response = freezed,
  }) {
    return _then(_$HouseDetailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as HouseDetailResponse?,
    ));
  }
}

/// @nodoc

class _$HouseDetailStateImpl extends _HouseDetailState {
  const _$HouseDetailStateImpl(
      {this.status = const BaseStatus.initial(), this.response})
      : super._();

// ignore: inference_failure_on_instance_creation, strict_raw_type
  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  @override
  final HouseDetailResponse? response;

  @override
  String toString() {
    return 'HouseDetailState(status: $status, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseDetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, response);

  /// Create a copy of HouseDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseDetailStateImplCopyWith<_$HouseDetailStateImpl> get copyWith =>
      __$$HouseDetailStateImplCopyWithImpl<_$HouseDetailStateImpl>(
          this, _$identity);
}

abstract class _HouseDetailState extends HouseDetailState {
  const factory _HouseDetailState(
      {final BaseStatus<dynamic> status,
      final HouseDetailResponse? response}) = _$HouseDetailStateImpl;
  const _HouseDetailState._() : super._();

// ignore: inference_failure_on_instance_creation, strict_raw_type
  @override
  BaseStatus<dynamic> get status;
  @override
  HouseDetailResponse? get response;

  /// Create a copy of HouseDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HouseDetailStateImplCopyWith<_$HouseDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
