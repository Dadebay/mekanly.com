import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../../core/components/app_text.dart';
import '../../../product/constants/constants.dart';
import '../../business_porfile_detail/models/business_profile_detail_response.dart';

class CategoriesChipHorizontalListView extends StatefulWidget {
  const CategoriesChipHorizontalListView({
    super.key,
    this.categories,
    this.onTap,
    this.selectedCategory,
  });

  final List<ProductCategory>? categories;
  final ValueChanged<ProductCategory?>? onTap;
  final ProductCategory? selectedCategory;

  @override
  State<CategoriesChipHorizontalListView> createState() =>
      _CategoriesChipHorizontalListViewState();
}

class _CategoriesChipHorizontalListViewState
    extends State<CategoriesChipHorizontalListView> {
  @override
  Widget build(BuildContext context) {
    final categories = widget.categories ?? [];
    // final selectedCategory = ;

    return Container(
      color: ColorName.blueishLight,
      padding: const EdgeInsets.fromLTRB(8, 8, 0, 8).w,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8.w,
          children: List.generate(
            widget.categories?.length ?? 0,
            (index) {
              return CategoriesChipItem(
                count: widget.categories?[index].productsCount,
                onTap: () => widget.onTap?.call(widget.categories?[index]),
                text: widget.categories?[index].title ?? '',
                isSelected: widget.selectedCategory?.id == categories[index].id,
              );
            },
          ),
        ),
      ),
    );
  }
}

class CategoriesChipItem extends StatefulWidget {
  const CategoriesChipItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
    this.count,
  });
  final String text;
  final int? count;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  State<CategoriesChipItem> createState() => _CategoriesChipItemState();
}

class _CategoriesChipItemState extends State<CategoriesChipItem> {
  @override
  Widget build(BuildContext context) {
    final text =
        widget.count != null ? '${widget.text} (${widget.count})' : widget.text;
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8).r,
          color: widget.isSelected
              ? const Color(0xFF3A8BCF)
              : const Color(0xFFF3F5F6),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 8,
          ).w,
          child: AppText.s14w400BdM(
            text,
            fontFamily: StringConstants.roboto,
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
            color: widget.isSelected ? Colors.white : const Color(0xFF555555),
          ),
        ),
      ),
    );
  }
}
