part of 'user_business_profile_bloc.dart';

@freezed
class UserBusinessProfileState with _$UserBusinessProfileState {
  const factory UserBusinessProfileState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(BaseStatus.initial()) BaseStatus productsStatus,
    ProductCategory? currentCategory,
    BusinessProfileData? profile,
    List<HouseProduct>? houseProducts,
    List<ProductData>? products,
  }) = _UserBusinessProfileState;

  const UserBusinessProfileState._();
}
