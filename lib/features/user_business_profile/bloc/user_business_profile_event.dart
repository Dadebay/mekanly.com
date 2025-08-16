part of 'user_business_profile_bloc.dart';

@freezed
class UserBusinessProfileEvent with _$UserBusinessProfileEvent {
  const factory UserBusinessProfileEvent.init(int id) = _Inited;
  const factory UserBusinessProfileEvent.getProductsByCtg(
    int id,
    ProductCategory ctg,
  ) = _GetProductsByCtg;

  const factory UserBusinessProfileEvent.getProducts(
    int id,
    int categoryId,
  ) = _GetProducts;

  const factory UserBusinessProfileEvent.getHouseProducts(
    int id,
    int categoryId,
  ) = _GetHouseProducts;
}
