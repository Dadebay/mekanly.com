import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../product/base/base_status/base_status.dart';
import '../../../product/base/bloc/base_bloc.dart';
import '../../../remote/repositories/business_profile/business_profile_detail_repository.dart';
import '../models/business_profile_detail_response.dart';

part 'business_profile_detail_event.dart';
part 'business_profile_detail_state.dart';
part 'business_profile_detail_bloc.freezed.dart';

@injectable
class BusinessProfileDetailBloc
    extends BaseBloc<BusinessProfileDetailEvent, BusinessProfileDetailState> {
  BusinessProfileDetailBloc(this._detailRepository)
      : super(const BusinessProfileDetailState()) {
    on<_Init>(_onInit);
  }

  final BusinessProfileDetailRepository _detailRepository;

  FutureOr<void> _onInit(
    _Init event,
    Emitter<BusinessProfileDetailState> emit,
  ) async {
    emit(state.copyWith(status: const BaseStatus.loading()));

    final res = await _detailRepository.detail(id: event.id);

    res.fold(
      (l) => emit(state.copyWith(status: BaseStatus.failure(l))),
      (r) => emit(
        state.copyWith(
          response: r,
          status: const BaseStatus.success(),
        ),
      ),
    );
  }
}
