part of 'business_profile_detail_bloc.dart';

@freezed
class BusinessProfileDetailEvent with _$BusinessProfileDetailEvent {
  const factory BusinessProfileDetailEvent.init(int id) = _Init;
}