import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../product/base/base_status/base_status.dart';
import '../../../product/base/bloc/base_bloc.dart';
import '../../../remote/entities/business_profile/business_profile_category_response.dart';
import '../../../remote/entities/business_profile/business_profiles_response.dart';
import '../../../remote/repositories/business_profile/business_profile_repository.dart';

part 'business_profile_state.dart';
part 'business_profile_cubit.freezed.dart';

@injectable
class BusinessProfileCubit extends BaseCubit<BusinessProfileState> {
  BusinessProfileCubit(
    this._businessProfileRepository,
    this._businessProfileCategoryRepository,
  ) : super(const BusinessProfileState());

  final BusinessProfileRepository _businessProfileRepository;
  final BusinessProfileCategoryRepository _businessProfileCategoryRepository;

  Future<void> init() async {
    emit(state.copyWith(status: const BaseStatus.loading()));

    final res = await _businessProfileRepository.profiles();

    res.fold(
      (l) => emit(state.copyWith(status: BaseStatus.failure(l))),
      (r) async {
        final profiles = r;

        final res = await _businessProfileCategoryRepository.categories();

        res.fold(
          (l) => emit(state.copyWith(status: BaseStatus.failure(l))),
          (r) {
            emit(
              state.copyWith(
                response: profiles,
                categoryResponse: r,
                status: const BaseStatus.success(),
              ),
            );
          },
        );
      },
    );
  }
}
