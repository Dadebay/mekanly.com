import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class ImageItem with EquatableMixin {
  ImageItem({
    this.image,
    this.imageUrl,
    required this.progress,
    required this.isComplete,
  }) : assert(image != null || imageUrl != null, 'Either image or imageUrl must be provided');
  final XFile? image;
  final String? imageUrl;
  final double progress;
  final bool isComplete;

  @override
  List<Object?> get props => [image, imageUrl, progress, isComplete];

  ImageItem copyWith({
    XFile? image,
    String? imageUrl,
    double? progress,
    bool? isComplete,
  }) {
    return ImageItem(
      progress: progress ?? this.progress,
      isComplete: isComplete ?? this.isComplete,
      image: image ?? this.image,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }
}