import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../../core/components/app_text.dart';
import '../../../core/components/common_porduct_card_widget.dart';
import '../../../localization/extensions.dart';
import '../../../product/constants/constants.dart';
import '../../../product/transitions/custom_page_route.dart';
import '../../../remote/entities/houses/house_entity.dart';
import '../../../remote/repositories/favorite/favorite_repository.dart';
import '../../../utils/extensions.dart';
import '../../../utils/helpers.dart';
import '../../add_house/widgets/dialogs.dart';
import '../../auth/login/phone_number/login_phone_number_view.dart';
import '../../house_detail/house_detail_view.dart';
import '../bloc/houses_bloc.dart';

class MainHouseItem extends StatefulWidget {
  const MainHouseItem({
    super.key,
    this.house,
  });

  final HouseEntity? house;
  // ignore: avoid_positional_boolean_parameters

  @override
  State<MainHouseItem> createState() => _MainHouseItemState();
}

class _MainHouseItemState extends State<MainHouseItem> {
  final FavoriteService favoriteService = FavoriteService();

  // ignore: inference_failure_on_function_return_type
  toggleFavoriteItem(BuildContext context) async {
    try {
      await favoriteService.toggleFavorite(
        context: context,
        favoritableId: widget.house?.id ?? 0,
        favoritableType: getFavoritableType(widget.house?.type),
      );
      context.read<HousesBloc>().add(
            HousesEvent.updateHouseFavoriteStatus(
              widget.house?.id ?? 0,
              !(widget.house?.favorited ?? false),
            ),
          );
    } catch (e) {
      return ToNotifyUser.show(
        context,
        message:
            // ignore: lines_longer_than_80_chars
            context.translation.ul_gir,
        onCancel: () => Navigator.pop(context),
        onOk: () {
          Navigator.pop(context);
          Navigator.pushReplacement(
            context,
            CustomPageRoute.slide(
              LoginPhoneNumberView.builder(context),
            ),
          );
        },
      );
    }
  }

  String getFavoritableType(String? type) {
    if (type == null) return '';
    switch (type.toLowerCase()) {
      case 'house':
        return 'House';
      case 'product':
        return 'Product';
      case 'shop':
        return 'Shop';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = context.mediaQuery.size.width - 40.w;
    final aspect = width / 235;

    return GestureDetector(
      onTap: () {
        if (widget.house?.id == null) return;
        final imgs = widget.house?.images?.map((e) => e.url).toList();
        final data = HouseDetailRoute(
          imgUrl: imgs,
          id: widget.house?.id,
          type: widget.house?.type,
          favorited: widget.house?.favorited,
        );
        Navigator.push(
          context,
          // ignore: inference_failure_on_function_invocation
          CustomPageRoute.slide(HouseDetailView.builder(context, data)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: ColorName.notifyShadow, width: 1.w),
          // ignore: use_if_null_to_convert_nulls_to_bools
          color: (widget.house?.luxeStatus == true ||
                  // ignore: use_if_null_to_convert_nulls_to_bools
                  widget.house?.vipStatus == true)
              ? null
              : Colors.white,
          borderRadius: BorderRadius.circular(11).r,
          boxShadow: [
            BoxShadow(
              blurRadius: 7,
              color: Colors.black.withAlpha(64),
            ),
          ],
          // ignore: use_if_null_to_convert_nulls_to_bools
          gradient: widget.house?.luxeStatus == true
              ? const LinearGradient(
                  colors: [
                    Color.fromRGBO(255, 251, 145, 1),
                    Color.fromRGBO(244, 242, 112, 1),
                    Color.fromRGBO(255, 239, 167, 1),
                  ],
                )
              // ignore: use_if_null_to_convert_nulls_to_bools
              : widget.house?.vipStatus == true
                  ? const LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 242, 182, 1),
                        Color.fromRGBO(255, 255, 255, 1),
                      ],
                    )
                  : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImageSection(aspect),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10).w,
              child: _buildContentSection(),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: avoid_field_initializers_in_const_classes
  Widget buildPriceText(HouseEntity house) {
    final originalPrice = double.tryParse(house.price ?? '0') ?? 0;
    final discountPercent = house.loverPercentage ?? 0;
    final discountedPrice = house.loverPrice?.toDouble() ?? 0;

    String formatPrice(double price) {
      return price.toStringAsFixed(price.truncateToDouble() == price ? 0 : 2);
    }

    if (discountPercent > 0 &&
        discountedPrice > 0 &&
        discountedPrice < originalPrice) {
      return RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: 15.sp,
            fontFamily: StringConstants.roboto,
            color: const Color.fromARGB(255, 34, 34, 34),
          ),
          children: [
            TextSpan(
              text: '${formatPrice(originalPrice)} TMT ',
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                color: const Color.fromARGB(255, 106, 106, 106),
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
              ),
            ),
            WidgetSpan(
              child: Transform.translate(
                offset: const Offset(0, -7),
                child: Text(
                  '$discountPercent%',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 34, 34, 34),
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            TextSpan(
              text: ' ${formatPrice(discountedPrice)} TMT',
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(255, 34, 34, 34),
              ),
            ),
          ],
        ),
      );
    } else {
      return AppText.s14w400BdM(
        '${formatPrice(originalPrice)} TMT',
        fontSize: 15.sp,
        fontFamily: StringConstants.roboto,
      );
    }
  }

  Widget _buildImageSection(double aspect) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(11).r,
            topRight: const Radius.circular(11).r,
          ),
          child: AspectRatio(
            aspectRatio: aspect,
            child: (widget.house?.images != null &&
                    widget.house!.images!.isNotEmpty)
                ? HousesCarouselSlider(imgUrls: widget.house?.images)
                : Container(
                    color: const Color(0xFFEEEEEE), // Background color #EEEEEE
                    child: Center(
                      child: Assets.icons.jayyok.svg(
                        // Using SVG icon
                        package: 'gen', // Assuming it's from the 'gen' package
                      ),
                    ),
                  ),
          ),
        ),
        Positioned(
          top: 4,
          left: 7,
          // ignore: use_if_null_to_convert_nulls_to_bools
          child: widget.house?.luxeStatus == true
              ? Assets.icons.luxee.svg(
                  package: 'gen',
                )
              : Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4).w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40).r,
                    border: Border.all(color: Colors.white, width: 1.w),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffF1F1F1),
                        Color(0xffFFFFFF),
                        Color(0xffFFFFFF),
                        Color(0xffEFEFEF),
                      ],
                    ),
                  ),
                  child: AppText.s12w400BdS(
                    widget.house?.categoryName ?? '',
                    fontFamily: StringConstants.roboto,
                  ),
                ),
        ),
        // ignore: use_if_null_to_convert_nulls_to_bools
        if (widget.house?.vipStatus == true)
          Positioned(
            bottom: 3,
            right: 5,
            child: SizedBox(
              child: Assets.icons.vip.svg(package: 'gen'),
            ),
          ),
        // HALANLARYM
        Positioned(
          right: 12,
          top: 12,
          child: GestureDetector(
            onTap: () {
              toggleFavoriteItem(context);
            },
            child: SizedBox(
              height: 24,
              width: 24,
              child: (widget.house?.favorited ?? false)
                  ? Assets.icons.saylanan.svg(package: 'gen')
                  : Assets.icons.icFavoriteDarkFill.svg(
                      package: 'gen',
                    ),
            ),
          ),
        ),
      ],
    );
  }

  Widget checkCircleIcon({Color color = Colors.white, double size = 14}) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Assets.icons.click.svg(package: 'gen'),
    );
  }

  Widget statusBadge(String text, {bool? isLuxe, bool? isVip}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // ignore: use_if_null_to_convert_nulls_to_bools
        color: (isLuxe == true || isVip == true)
            ? null
            : const Color.fromARGB(255, 243, 243, 243),
        // ignore: use_if_null_to_convert_nulls_to_bools
        gradient: isLuxe == true
            ? const LinearGradient(
                colors: [
                  Color.fromRGBO(244, 242, 112, 1),
                  Color.fromRGBO(255, 239, 167, 1),
                ],
              )
            // ignore: use_if_null_to_convert_nulls_to_bools
            : isVip == true
                ? const LinearGradient(
                    colors: [
                      Color.fromRGBO(255, 255, 255, 1),
                      Color.fromRGBO(255, 255, 255, 1),
                    ],
                  )
                : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          checkCircleIcon(
            color:
                // ignore: use_if_null_to_convert_nulls_to_bools
                (isLuxe == true || isVip == true) ? Colors.white : Colors.white,
          ),
          const SizedBox(width: 6),
          Text(
            text,
            style: const TextStyle(
              color: Color.fromARGB(255, 113, 113, 113),
              fontSize: 12,
              fontFamily: StringConstants.roboto,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildUniquePossibilityIcons(List<PossibilityEntity>? list) {
    final seenNames = <String>{};

    return (list ?? [])
        .where((e) => e.name != null && seenNames.add(e.name!.toLowerCase()))
        .take(8)
        .map((e) => e.buildIcon())
        .toList();
  }

  Widget _buildContentSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: AppText.s16w400BdL(
                widget.house?.name ?? '',
                fontFamily: StringConstants.roboto,
              ),
            ),
            SizedBox(
              width: 16.w,
              height: 16.w,
              child: Assets.icons.icComment.svg(package: 'gen'),
            ),
            SizedBox(width: 2.w),
            AppText.s10w400LbS(
              '(${widget.house?.commentCount})',
              fontFamily: StringConstants.roboto,
            ),
          ],
        ),
        //SUTAYDA duzettmeli goruldi gorulmedi
        if (widget.house?.possibilities?.isNotEmpty ?? false) ...[
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ..._buildUniquePossibilityIcons(widget.house?.possibilities),
                ],
              ),
              Row(
                children: [
                  // ignore: use_if_null_to_convert_nulls_to_bools
                  if (widget.house?.hasSeen == true &&
                      widget.house?.contacted != true)
                    statusBadge(
                      context.translation.viewed,
                      isLuxe: widget.house?.luxeStatus,
                      isVip: widget.house?.vipStatus,
                    ),

                  // ignore: use_if_null_to_convert_nulls_to_bools
                  if (widget.house?.contacted == true)
                    statusBadge(
                      context.translation.contacted,
                      isLuxe: widget.house?.luxeStatus,
                      isVip: widget.house?.vipStatus,
                    ),
                ],
              ),
            ],
          ),
        ],

        SizedBox(height: 10.h),
        AppText.s12w400BdS(
          '${widget.house?.location?.parentName}/${widget.house?.location?.name} ${HelpersCopy.formatDate(DateTime.parse(widget.house?.createdAt ?? ''))}',
          fontFamily: StringConstants.roboto,
          fontSize: 12.sp,
          color: ColorName.addressDate,
        ),
        SizedBox(height: 5.h),
        AppText.s12w400BdS(
          widget.house?.description ?? '',
          fontFamily: StringConstants.roboto,
          fontSize: 12.sp,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          color: ColorName.addressDate,
        ),
        SizedBox(height: 8.h),
        Column(
          mainAxisAlignment: widget.house?.exclusive == 1
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.start,
          children: [
            if (widget.house?.exclusive == 1)
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  SizedBox(
                    child: Assets.icons.widgets.svg(package: 'gen'),
                  ),
                  Positioned(
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: const Text(
                        'Diňe mekanly.com-da',
                        style: TextStyle(
                          fontFamily: StringConstants.roboto,
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            SizedBox(height: widget.house?.exclusive == 1 ? 7.w : 0),
          ],
        ),
        buildPriceText(widget.house!),
      ],
    );
  }
}
