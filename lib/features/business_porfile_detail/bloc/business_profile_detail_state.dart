part of 'business_profile_detail_bloc.dart';

@freezed
class BusinessProfileDetailState with _$BusinessProfileDetailState {
  const factory BusinessProfileDetailState({
    // ignore: inference_failure_on_instance_creation, strict_raw_type
    @Default(BaseStatus.initial()) BaseStatus status,
    BusinessProfileDetailResponse? response,
  }) = _BusinessProfileDetailState;

  const BusinessProfileDetailState._();
}
