// ignore_for_file: inference_failure_on_instance_creation

part of 'business_profile_cubit.dart';

@freezed
class BusinessProfileState with _$BusinessProfileState {
  const factory BusinessProfileState({
    // ignore: strict_raw_type
    @Default(BaseStatus.initial()) BaseStatus status,
    BusinessProfilesResponse? response,
    BusinessProfileCategoryResponse? categoryResponse,

  }) = _BusinessProfileState;

  const BusinessProfileState._();
}
