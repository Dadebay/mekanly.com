import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../product/base/base_status/base_status.dart';
import '../../../product/base/bloc/base_bloc.dart';
import '../../../remote/entities/global_options/global_options.dart';
import '../../../remote/entities/house_detail/house_detail_response.dart';
import '../../../remote/repositories/add_house/add_house_repository.dart';
import '../../../remote/response_error.dart';
import '../../../utils/extensions.dart';
import '../model/add_house_payload.dart';
import '../widgets/image_item.dart';

part 'add_house_state.dart';
part 'add_house_cubit.freezed.dart';

@injectable
class AddHouseCubit extends BaseCubit<AddHouseState> {
  AddHouseCubit(this._addHouseRepository) : super(const AddHouseState());

  final AddHouseRepository _addHouseRepository;

  Future<void> init(GlobalOptions options) async {
    emit(state.copyWith(options: options));
  }

  Future<void> pickAndProcessImages({
    required ImagePicker picker,
  }) async {
    emit(state.copyWith(pickImageStatus: const BaseStatus.loading()));
    try {
      // Step 1: Select multiple images
      final selectedImages = await picker.pickMultiImage(
        limit: 15,
      );

      if (selectedImages.isEmpty) {
        emit(state.copyWith(pickImageStatus: const BaseStatus.success()));
        return;
      }

      // Step 2: Create image items with initial progress

      final allImages = selectedImages
          .map(
            (image) => ImageItem(
              image: image,
              progress: 0,
              isComplete: false,
            ),
          )
          .toList();
      emit(
        state.copyWith(
          pickImageStatus: const BaseStatus.success(),
          pickedImages: List.of(allImages),
        ),
      );

      // Step 3: Process each image individually
      for (var i = 0; i < allImages.length; i++) {
        await _processImage(i);
      }
    } catch (e) {
      emit(
        state.copyWith(
          pickImageStatus: BaseStatus.failure(
            ResponseError.from(e.toString()),
          ),
        ),
      );
    }
  }

  Future<void> _processImage(int index) async {
    final imageItems = state.pickedImages;
    List<ImageItem>? updatedList;
    var item = imageItems?[index];
    // Simulate processing with incremental progress updates
    for (var progress = 0; progress <= 100; progress += 25) {
      // In a real app, this would be actual processing like compression or upload
      await Future<void>.delayed(const Duration(milliseconds: 100));
      final progressItem = progress / 100;

      item = item?.copyWith(progress: progressItem);
      if (item == null) return;
      updatedList = List<ImageItem>.from(imageItems ?? []).update(index, item);

      emit(
        state.copyWith(
          pickedImages: updatedList,
        ),
      );
    }

    item = item?.copyWith(isComplete: true);
    if (item == null) return;
    updatedList = List<ImageItem>.from(updatedList ?? []).update(index, item);

    emit(
      state.copyWith(
        pickedImages: updatedList,
      ),
    );
  }

  void removeImage(int index) {
    emit(
      state.copyWith(
        addHouseStatus: const BaseStatus.initial(),
        pickImageStatus: const BaseStatus.initial(),
      ),
    );
    final images = state.pickedImages;

    if (images != null && images.isNotEmpty) {
      final removed = List<ImageItem>.from(images)..removeAt(index);

      emit(state.copyWith(pickedImages: removed));
    }
  }

  Future<void> addHouse(AddHousePayload data) async {
    emit(state.copyWith(addHouseStatus: const BaseStatus.loading()));

    final image = state.pickedImages?.map((m) => m.image).whereType<XFile>().toList();

    final res = await _addHouseRepository.addHouse(
      images: image ?? [],
      otherFields: data.addHouse(),
    );

    res.fold(
      (l) => emit(state.copyWith(addHouseStatus: BaseStatus.failure(l))),
      (r) {
        emit(
          state.copyWith(
            addHouseStatus: const BaseStatus.success(),
          ),
        );
        return;
      },
    );
  }

  void loadExistingImages(List<HouseImage> list) {
    final existingImageItems = list.map((houseImage) {
      return ImageItem(
        imageUrl: houseImage.url,
        image: null,
        progress: 1.0,
        isComplete: true,
      );
    }).toList();

    emit(state.copyWith(pickedImages: existingImageItems));
  }
}
