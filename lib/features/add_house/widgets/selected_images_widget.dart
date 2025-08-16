import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../../core/components/app_text.dart';
import '../../../localization/extensions.dart';
import '../../../utils/extensions.dart';
import '../../../utils/api_provider.dart';

import 'image_item.dart';

class SelectedImagesWidget extends StatelessWidget {
  const SelectedImagesWidget({
    super.key,
    this.pickedImages,
    required this.onRemove,
  });
  final List<ImageItem>? pickedImages;
  final ValueChanged<int> onRemove;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 126.w,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => 7.boxW,
        itemCount: pickedImages?.length ?? 0,
        itemBuilder: (context, index) {
          final item = pickedImages?[index];
          if (item == null) return const SizedBox();
          return Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5).r,
                child: Container(
                  width: 128.w,
                  height: 126.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5).r,
                    color: Colors.black12,
                  ),
                  child: item.imageUrl != null
                      ? Image.network(
                          ApiProvider().baseUrl + item.imageUrl!,
                          fit: BoxFit.cover,
                          width: 128.w,
                          height: 126.w,
                        )
                      : Image.file(
                          File(
                            item.image!.path,
                          ),
                          fit: BoxFit.cover,
                          width: 128.w,
                          height: 126.w,
                        ),
                ),
              ),
              if (index == 0)
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff209625),
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(5).r,
                      ),
                    ),
                    padding: const EdgeInsets.fromLTRB(
                      4,
                      2,
                      2,
                      2,
                    ).w,
                    child: AppText.s10w400LbS(
                      context.translation.esasysurat,
                      color: Colors.white,
                    ),
                  ),
                ),
              Positioned(
                right: 6.w,
                top: 6.w,
                child: InkWell(
                  onTap: () => onRemove.call(index),
                  child: SizedBox(
                    width: 26.w,
                    height: 26.w,
                    child: Assets.icons.icRemove.svg(package: 'gen'),
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  width: 30.w,
                  height: 30.w,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(4).w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8).r,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.w,
                    ),
                  ),
                  child: item.isComplete
                      ? Assets.icons.icChecked.svg(package:
                          'gen',
                          width: 12.sp,
                          height: 12.sp,
                        )
                      : AppText.s12w400BdS(
                          '${((item.progress) * 100).toInt()}%',
                          color: Colors.white,
                          fontSize: ((item.progress) * 100).toInt() < 100
                              ? 8.sp
                              : 6.sp,
                          fontWeight: FontWeight.w500,
                        ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
