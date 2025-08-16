// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_profile_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BusinessProfileDetailEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BusinessProfileDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessProfileDetailEventCopyWith<BusinessProfileDetailEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessProfileDetailEventCopyWith<$Res> {
  factory $BusinessProfileDetailEventCopyWith(BusinessProfileDetailEvent value,
          $Res Function(BusinessProfileDetailEvent) then) =
      _$BusinessProfileDetailEventCopyWithImpl<$Res,
          BusinessProfileDetailEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$BusinessProfileDetailEventCopyWithImpl<$Res,
        $Val extends BusinessProfileDetailEvent>
    implements $BusinessProfileDetailEventCopyWith<$Res> {
  _$BusinessProfileDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessProfileDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res>
    implements $BusinessProfileDetailEventCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$BusinessProfileDetailEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessProfileDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$InitImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'BusinessProfileDetailEvent.init(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of BusinessProfileDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) init,
  }) {
    return init(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? init,
  }) {
    return init?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements BusinessProfileDetailEvent {
  const factory _Init(final int id) = _$InitImpl;

  @override
  int get id;

  /// Create a copy of BusinessProfileDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BusinessProfileDetailState {
// ignore: inference_failure_on_instance_creation, strict_raw_type
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  BusinessProfileDetailResponse? get response =>
      throw _privateConstructorUsedError;

  /// Create a copy of BusinessProfileDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessProfileDetailStateCopyWith<BusinessProfileDetailState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessProfileDetailStateCopyWith<$Res> {
  factory $BusinessProfileDetailStateCopyWith(BusinessProfileDetailState value,
          $Res Function(BusinessProfileDetailState) then) =
      _$BusinessProfileDetailStateCopyWithImpl<$Res,
          BusinessProfileDetailState>;
  @useResult
  $Res call(
      {BaseStatus<dynamic> status, BusinessProfileDetailResponse? response});

  $BaseStatusCopyWith<dynamic, $Res> get status;
  $BusinessProfileDetailResponseCopyWith<$Res>? get response;
}

/// @nodoc
class _$BusinessProfileDetailStateCopyWithImpl<$Res,
        $Val extends BusinessProfileDetailState>
    implements $BusinessProfileDetailStateCopyWith<$Res> {
  _$BusinessProfileDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessProfileDetailState
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
              as BusinessProfileDetailResponse?,
    ) as $Val);
  }

  /// Create a copy of BusinessProfileDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<dynamic, $Res> get status {
    return $BaseStatusCopyWith<dynamic, $Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of BusinessProfileDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessProfileDetailResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $BusinessProfileDetailResponseCopyWith<$Res>(_value.response!,
        (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BusinessProfileDetailStateImplCopyWith<$Res>
    implements $BusinessProfileDetailStateCopyWith<$Res> {
  factory _$$BusinessProfileDetailStateImplCopyWith(
          _$BusinessProfileDetailStateImpl value,
          $Res Function(_$BusinessProfileDetailStateImpl) then) =
      __$$BusinessProfileDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus<dynamic> status, BusinessProfileDetailResponse? response});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
  @override
  $BusinessProfileDetailResponseCopyWith<$Res>? get response;
}

/// @nodoc
class __$$BusinessProfileDetailStateImplCopyWithImpl<$Res>
    extends _$BusinessProfileDetailStateCopyWithImpl<$Res,
        _$BusinessProfileDetailStateImpl>
    implements _$$BusinessProfileDetailStateImplCopyWith<$Res> {
  __$$BusinessProfileDetailStateImplCopyWithImpl(
      _$BusinessProfileDetailStateImpl _value,
      $Res Function(_$BusinessProfileDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessProfileDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? response = freezed,
  }) {
    return _then(_$BusinessProfileDetailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BusinessProfileDetailResponse?,
    ));
  }
}

/// @nodoc

class _$BusinessProfileDetailStateImpl extends _BusinessProfileDetailState {
  const _$BusinessProfileDetailStateImpl(
      {this.status = const BaseStatus.initial(), this.response})
      : super._();

// ignore: inference_failure_on_instance_creation, strict_raw_type
  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  @override
  final BusinessProfileDetailResponse? response;

  @override
  String toString() {
    return 'BusinessProfileDetailState(status: $status, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessProfileDetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, response);

  /// Create a copy of BusinessProfileDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessProfileDetailStateImplCopyWith<_$BusinessProfileDetailStateImpl>
      get copyWith => __$$BusinessProfileDetailStateImplCopyWithImpl<
          _$BusinessProfileDetailStateImpl>(this, _$identity);
}

abstract class _BusinessProfileDetailState extends BusinessProfileDetailState {
  const factory _BusinessProfileDetailState(
          {final BaseStatus<dynamic> status,
          final BusinessProfileDetailResponse? response}) =
      _$BusinessProfileDetailStateImpl;
  const _BusinessProfileDetailState._() : super._();

// ignore: inference_failure_on_instance_creation, strict_raw_type
  @override
  BaseStatus<dynamic> get status;
  @override
  BusinessProfileDetailResponse? get response;

  /// Create a copy of BusinessProfileDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessProfileDetailStateImplCopyWith<_$BusinessProfileDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
