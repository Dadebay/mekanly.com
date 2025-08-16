import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../product/base/base_status/base_status.dart';
import '../../../product/base/bloc/base_bloc.dart';
import '../../../remote/repositories/business_profile/business_profile_detail_products_repository.dart';
import '../../../remote/repositories/business_profile/business_profile_detail_repository.dart';
import '../../business_porfile_detail/models/business_profile_detail_products_response.dart';
import '../../business_porfile_detail/models/business_profile_detail_response.dart';
import '../../business_porfile_detail/models/business_profile_house_products_response.dart';

part 'user_business_profile_event.dart';
part 'user_business_profile_state.dart';
part 'user_business_profile_bloc.freezed.dart';

@injectable
class UserBusinessProfileBloc
    extends BaseBloc<UserBusinessProfileEvent, UserBusinessProfileState> {
  UserBusinessProfileBloc(this._detailRepository, this._productsRepository)
      : super(const UserBusinessProfileState()) {
    on<_Inited>(_onInit);
    on<_GetProductsByCtg>(_onGetProductsByCtg);
    on<_GetProducts>(_onGetProducts);
    on<_GetHouseProducts>(_onGetHouseProducts);
  }

  final BusinessProfileDetailRepository _detailRepository;
  final BusinessProfileDetailProductsRepository _productsRepository;

  Future<void> _onInit(
    _Inited event,
    Emitter<UserBusinessProfileState> emit,
  ) async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    final res = await _detailRepository.detail(id: event.id);

    res.fold(
      (l) {
        log('<<<<<<<<<<<<<<<<<<<<<<<User Business Profile Error 1 $l');

        return emit(state.copyWith(status: BaseStatus.failure(l)));
      },
      (r) {
        final data = r.data;
        final categories = data?.productCategories ?? [];
        final currentCtg = categories.isNotEmpty ? categories.first : null;

        emit(
          state.copyWith(
            currentCategory: currentCtg,
            profile: data,
            status: const BaseStatus.success(),
          ),
        );
        if (currentCtg != null) {
          return add(
            UserBusinessProfileEvent.getProductsByCtg(
              event.id,
              currentCtg,
            ),
          );
        }
        return;
      },
    );
  }

  Future<void> _onGetProductsByCtg(
    _GetProductsByCtg event,
    Emitter<UserBusinessProfileState> emit,
  ) async {
    final currentCtgId = event.ctg.id;

    emit(
      state.copyWith(
        currentCategory: event.ctg,
      ),
    );

    if (currentCtgId == null) return;
    switch (event.ctg.typeProd) {
      case ProductCategoryType.house:
        return add(
          UserBusinessProfileEvent.getHouseProducts(
            event.id,
            currentCtgId,
          ),
        );
      case ProductCategoryType.product:
        return add(
          UserBusinessProfileEvent.getProducts(
            event.id,
            currentCtgId,
          ),
        );
    }
  }

  Future<void> _onGetProducts(
    _GetProducts event,
    Emitter<UserBusinessProfileState> emit,
  ) async {
    emit(state.copyWith(productsStatus: const BaseStatus.loading()));

    final res = await _productsRepository.getProducts(
      shopId: event.id,
      categoryId: event.categoryId,
    );

    res.fold(
      (l) {
        log('<<<<<<<<<<<<<<<<<<<<<<<User Business Profile Error 2 $l');

        return emit(state.copyWith(productsStatus: BaseStatus.failure(l)));
      },
      (r) {
        return emit(
          state.copyWith(
            products: r.data,
            productsStatus: const BaseStatus.success(),
          ),
        );
      },
    );
  }

  Future<void> _onGetHouseProducts(
    _GetHouseProducts event,
    Emitter<UserBusinessProfileState> emit,
  ) async {
    emit(state.copyWith(productsStatus: const BaseStatus.loading()));

    final res = await _productsRepository.getHouseProducts(
      shopId: event.id,
      categoryId: event.categoryId,
    );

    res.fold(
      (l) {
        log('<<<<<<<<<<<<<<<<<<<<<<<User Business Profile Error 3 $l');
        return emit(state.copyWith(productsStatus: BaseStatus.failure(l)));
      },
      (r) {
        return emit(
          state.copyWith(
            houseProducts: r.data,
            productsStatus: const BaseStatus.success(),
          ),
        );
      },
    );
  }
}
