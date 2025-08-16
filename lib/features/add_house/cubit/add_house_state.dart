// ignore_for_file: inference_failure_on_instance_creation

part of 'add_house_cubit.dart';

@freezed
class AddHouseState with _$AddHouseState {
  const factory AddHouseState({

    // ignore: strict_raw_type
    @Default(BaseStatus.initial()) BaseStatus status,
    // ignore: strict_raw_type
    @Default(BaseStatus.initial()) BaseStatus pickImageStatus,
    // ignore: strict_raw_type
    @Default(BaseStatus.initial()) BaseStatus addHouseStatus,
    List<ImageItem>? pickedImages,
    GlobalOptions? options,
  }) = _AddHouseState;

  const AddHouseState._();
}
