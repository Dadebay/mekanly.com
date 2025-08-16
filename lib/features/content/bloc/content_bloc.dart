import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../product/base/base_status/base_status.dart';
import '../../../product/base/bloc/base_bloc.dart';
import '../../../remote/entities/global_options/global_option_values.dart';
import '../../../remote/entities/global_options/global_options.dart';
import '../../../remote/entities/user_house/user_houses_response.dart';
import '../../../remote/entities/user_profile/user_profile_info_response.dart';
import '../../../remote/repositories/auth/auth_repository.dart';
import '../../../remote/repositories/houses/house_repository.dart';
import '../../../remote/repositories/user_houses/user_houses_repository.dart';

part 'content_event.dart';
part 'content_state.dart';
part 'content_bloc.freezed.dart';

@injectable
class ContentBloc extends BaseBloc<ContentEvent, ContentState> {
  ContentBloc(
    this._userHousesRepository,
    this._housesRepository,
    this._authRepository,
  ) : super(const ContentState()) {
    on<_Init>(_init);
  }

  final HousesRepository _housesRepository;

  final UserHousesRepository _userHousesRepository;

  final IAuthRepository _authRepository;

  FutureOr<void> _init(
    _Init event,
    Emitter<ContentState> emit,
  ) async {
    GlobalOptions? options;
    List<UserProductCategory>? productCategories;
    List<UserHouse>? userHouses;
    emit(
      state.copyWith(
        status: const BaseStatus.loading(),
      ),
    );

    final allRes = await Future.wait([
      _housesRepository.globalOptions(),
      _authRepository.profileInfo(),
      _userHousesRepository.houses(),
    ]);

    allRes.first.fold(
      (l) => emit(state.copyWith(status: BaseStatus.failure(l))),
      (r) {
        final res = r as GlobalOptionsResponse?;
        options = res?.data.copyWith(
          floorCount: GlobalOptionValues.floorCounts,
          roomCount: GlobalOptionValues.roomCounts,
          floorCountHouse: GlobalOptionValues.floorCountsHouse,
          roomCountHouse: GlobalOptionValues.roomCountsHouse,
          levelCountHouse: GlobalOptionValues.levelCountsHouse,
        );
      },
    );

    allRes[1].fold(
      (l) => emit(state.copyWith(status: BaseStatus.failure(l))),
      (r) {
        final res = r as UserProfileInfoResponse?;
        productCategories = res?.data?.productCategories;
      },
    );

    allRes[2].fold(
      (l) => emit(state.copyWith(status: BaseStatus.failure(l))),
      (r) {
        final res = r as UserHousesResponse?;
        userHouses = res?.data;
      },
    );
    
   return emit(
      state.copyWith(
        status: const BaseStatus.success(),
        globalOptions: options,
        productCategories: productCategories,
        userHouses: userHouses,
      ),
    );
  }

}
