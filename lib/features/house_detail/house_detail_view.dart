import 'package:common/common.dart';
import 'package:dio/dio.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/components/app_btn.dart';
import '../../core/components/app_text.dart';
import '../../core/components/loading_indicator.dart';
import '../../core/components/try_again_widget.dart';
import '../../localization/extensions.dart';
import '../../product/base/base_status/base_status.dart';
import '../../product/constants/constants.dart';
import '../../product/injection/injector.dart';
import '../../product/transitions/custom_page_route.dart';
import '../../remote/entities/house_detail/house_detail_response.dart';
import '../../remote/repositories/contact/contact_response.dart';
import '../../remote/repositories/favorite/favorite_repository.dart';
import '../../utils/abuse/model.dart';
import '../../utils/abuse/service.dart';
import '../../utils/extensions.dart';
import '../../utils/helpers.dart';
import '../houses/bloc/houses_bloc.dart';
import 'commit/commentbottomsheet.dart';
import 'cubit/house_detail_cubit.dart';
import 'house_images.dart';
import 'recoman/recom_house_view.dart' show RecommendedHousesSection;
import 'recoman/recomendation_biznes.dart' show RecommendedBusinesSection;
import 'widgets/circled_icon_btn.dart';
import 'widgets/gradient_bg_container.dart';
import 'widgets/pop_up.dart';
import 'widgets/row_main_info_tile.dart';
import 'widgets/share_bottom_sheet.dart';

class HouseDetailRoute {
  HouseDetailRoute({
    required this.imgUrl,
    required this.id,
    required this.type,
    required this.favorited,
    this.status,
  });

  final List<String?>? imgUrl;
  final int? id;
  final String? status;
  final String? type;
  final bool? favorited;
}

class HouseDetailView extends StatefulWidget {
  const HouseDetailView({
    super.key,
    required this.data,
    this.status,
  });

  static const routePath = '/house-detail-view';
  static const routeName = 'house-detail-view';

  static Widget builder(
    BuildContext context,
    HouseDetailRoute data, {
    String? status,
  }) {
    final bloc = injector<HouseDetailCubit>();
    return BlocProvider(
      create: (context) => bloc..getHouseDetail(data.id ?? 0),
      child: HouseDetailView(data: data, status: status),
    );
  }

  final HouseDetailRoute data;
  final String? status;

  @override
  State<HouseDetailView> createState() => _HouseDetailViewState();
}

class _HouseDetailViewState extends State<HouseDetailView> {
  double _scrollPercentage = 0;
  bool shareLink = false;
  bool shareImage = true;

  late String link;
  late List<String?> imageUrls; // Change to List<String?>
  final FavoriteService favoriteService = FavoriteService();

  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.data.favorited ?? false;
    imageUrls = widget.data.imgUrl ?? [];

    while (imageUrls.length < 3) {
      imageUrls.add('');
    }

    link = 'https://mekanly.com/house/${widget.data.id}';
  }

  Future<void> toggleFavoriteItem(BuildContext context) async {
    try {
      await favoriteService.toggleFavorite(
        context: context,
        favoritableId: widget.data.id ?? 0,
        favoritableType: getFavoritableType(widget.data.type),
      );

      // Update local state for the detail view's UI
      setState(() {
        isFavorite = !isFavorite;
      });

      // Notify the central bloc so the list view updates
      context.read<HousesBloc>().add(
            HousesEvent.updateHouseFavoriteStatus(
              widget.data.id ?? 0,
              isFavorite, // Pass the new state
            ),
          );
    } catch (e) {
      // Handle potential errors, maybe show a toast
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

  final abuseService = AbuseService();

  void _showReportBottomSheet(BuildContext context, List<AbuseReason> reasons) {
    int? selectedReasonId;

    // ignore: inference_failure_on_function_invocation
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext ctx) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.flag,
                        color: Color.fromARGB(255, 55, 65, 81),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        context.translation.nag_iber,
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: StringConstants.roboto,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 55, 65, 81),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.close,
                          color: Color.fromARGB(255, 55, 65, 81),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  ...reasons.map((reason) {
                    return RadioListTile<int>(
                      title: Text(
                        reason.description,
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: StringConstants.roboto,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 55, 65, 81),
                        ),
                      ),
                      value: reason.id,
                      groupValue: selectedReasonId,
                      activeColor: ColorName.blueish,
                      onChanged: (val) {
                        setState(() {
                          selectedReasonId = val;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.trailing,
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity.compact,
                      dense: true,
                    );
                  }),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorName.blueish,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: selectedReasonId == null
                          ? null
                          : () async {
                              try {
                                await showWideDialog(context);
                                // ignore: use_build_context_synchronously
                                Navigator.pop(context);

                                await abuseService.sendReason(
                                  abuseListId: selectedReasonId!,
                                  itemId: widget.data.id ?? 0,
                                  message: reasons
                                      .firstWhere(
                                        (e) => e.id == selectedReasonId,
                                      )
                                      .description,
                                  type: 'house',
                                );

                                if (context.mounted) {}
                              } catch (e) {
                                debugPrint('Error: $e');
                                if (context.mounted) {}
                              }
                            },
                      child: Text(
                        context.translation.ugrat,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontFamily: StringConstants.roboto,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Future<void> showWideDialog(BuildContext context) async {
    // ignore: inference_failure_on_function_invocation
    await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          insetPadding: const EdgeInsets.symmetric(horizontal: 10),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    context.translation.notification,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 34, 34, 34),
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  context.translation.kabul_iber,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 90, 93, 98),
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 24),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blue,
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'OK',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 34, 34, 34),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final houseId = widget.data.id ?? 0;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final pinnedHeaderHeight = statusBarHeight + kToolbarHeight;

    return Scaffold(
      body: ExtendedNestedScrollView(
        headerSliverBuilder: (BuildContext c, bool f) {
          final currentHeight = context.findRenderObject() is RenderBox
              ? (context.findRenderObject()! as RenderBox).size.height
              : kToolbarHeight;
          const maxHeight = 320;
          final minHeight = kToolbarHeight + MediaQuery.of(context).padding.top;
          var scrollPercentage =
              1.0 - ((currentHeight - minHeight) / (maxHeight - minHeight));
          scrollPercentage = scrollPercentage.clamp(0.0, 1.0);
          return <Widget>[
            SliverAppBar(
              pinned: true,
              foregroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              expandedHeight: 320,
              backgroundColor: ColorName.main,
              automaticallyImplyLeading: false,
              leading: _scrollPercentage < 0.8
                  ? Row(
                      children: [
                        14.boxW,
                        CircledIconBtn(
                          icon: Assets.icons.icBack.svg(
                            package: 'gen',
                            width: 18,
                            height: 18,
                          ),
                          onTap: () => Navigator.pop(context),
                        ),
                      ],
                    )
                  : IconButton(
                      icon: Assets.icons.icBack.svg(
                        // ignore: deprecated_member_use
                        color: Colors.white,
                        package: 'gen',
                        width: 25,
                        height: 25,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
              actions: [
                if (_scrollPercentage < 0.8)
                  Row(
                    children: [
                      CircledIconBtn(
                        icon: Assets.icons.sharer.svg(package: 'gen'),
                        onTap: () {
                          final imageUrls = widget.data.imgUrl
                                  ?.whereType<String>()
                                  .toList() ??
                              [];
                          ShareBottomSheet.show(context, imageUrls);
                        },
                      ),
                      12.boxW,
                      CircledIconBtn(
                        icon: isFavorite
                            ? Assets.icons.tazefav.svg(package: 'gen')
                            : Assets.icons.icHeartHouse.svg(package: 'gen'),
                        onTap: () => toggleFavoriteItem(context),
                      ),
                      14.boxW,
                    ],
                  )
                else
                  Row(
                    children: [
                      IconButton(
                        icon: Assets.icons.sharer.svg(
                          package: 'gen',
                          // ignore: deprecated_member_use
                          color: Colors.white,
                          width: 25,
                          height: 25,
                        ),
                        onPressed: () {
                          final rawImageUrl =
                              widget.data.imgUrl?.toString() ?? '';
                          List<String> imageUrls;
                          if (rawImageUrl.startsWith('[') &&
                              rawImageUrl.endsWith(']')) {
                            final cleanStr = rawImageUrl.substring(
                              1,
                              rawImageUrl.length - 1,
                            );
                            imageUrls = cleanStr
                                .split(',')
                                .map((e) => e.trim())
                                .toList();
                          } else if (rawImageUrl.isNotEmpty) {
                            imageUrls = [rawImageUrl];
                          } else {
                            imageUrls = [];
                          }
                          while (imageUrls.length < 5) {
                            imageUrls.add('');
                          }

                          ShareBottomSheet.show(context, imageUrls);
                        },
                      ),
                      12.boxW,
                      IconButton(
                        icon: isFavorite
                            ? Assets.icons.tazefav.svg(
                                package: 'gen',
                                width: 25,
                                height: 25,
                              )
                            : Assets.icons.icHeartHouse.svg(
                                // ignore: deprecated_member_use
                                color: Colors.white,
                                package: 'gen',
                                width: 25,
                                height: 25,
                              ),
                        onPressed: () => toggleFavoriteItem(context),
                      ),
                      14.boxW,
                    ],
                  ),
              ],
              flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  final currentHeight = constraints.biggest.height;
                  const double maxHeight = 320;
                  final minHeight =
                      kToolbarHeight + MediaQuery.of(context).padding.top;

                  var scrollPercentage = 1.0 -
                      ((currentHeight - minHeight) / (maxHeight - minHeight));

                  scrollPercentage = scrollPercentage.clamp(0.0, 1.0);

                  if (scrollPercentage != _scrollPercentage) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (mounted) {
                        setState(() {
                          _scrollPercentage = scrollPercentage;
                        });
                      }
                    });
                  }
                  scrollPercentage = scrollPercentage.clamp(0.0, 1.0);
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      Opacity(
                        opacity: 1.0 - scrollPercentage * 0.7,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                // ignore: deprecated_member_use
                                Colors.black.withOpacity(0.3),
                                Colors.transparent,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          padding: const EdgeInsets.only(left: 55, bottom: 15),
                          child: Opacity(
                            opacity: scrollPercentage,
                            child: const Text(
                              'Gyssagly satlyk jay',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 1.0 - scrollPercentage,
                        child: _HouseDetailImgSlider(data: widget.data),
                      ),
                    ],
                  );
                },
              ),
            ),
          ];
        },
        pinnedHeaderSliverHeightBuilder: () {
          return pinnedHeaderHeight;
        },
        body: BlocBuilder<HouseDetailCubit, HouseDetailState>(
          builder: (context, state) {
            if (state.status.isLoading) {
              return LoadingIndicator.basic();
            }

            if (state.status.isFailure) {
              return TryAgainWidget(
                onTryAgain: () {
                  context.read<HouseDetailCubit>().getHouseDetail(
                        widget.data.id ?? 0,
                      );
                },
              );
            }

            final house = state.response?.data;
            final type = (house?.type == 'house') ? 'House' : 'Product';
            return SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _HeaderInfos(house: house),

                  if (house?.exclusive == 1)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12).w,
                      child: const ClickableBanner(),
                    ),
                  if (house?.exclusive == 1) 12.boxH,
                  _Comments(
                    itemId: house!.id ?? 0,
                    // itemType: house.type ?? 'House',
                    itemType: type,
                    commentCount: house.commentCount ?? 0,
                  ),
                  12.boxH,
                  _HouseDetailInfo(house: house),
                  20.boxH,
                  _HouseDetailPossibility(house: house),
                  20.boxH,
                  _Description(description: house.description),
                  20.boxH,
                  // if (bigBanners?.isNotEmpty ?? false)
                  //   AdvCard(
                  //     imgUrl:
                  //         'https://mekanly.com.tm/${bigBanners?.first.image ?? ''}',
                  //     logo: bigBanners?.first.logo != null &&
                  //             (bigBanners?.first.logo != 'storage/')
                  //         ? 'https://mekanly.com.tm/${bigBanners?.first.logo ?? ''}'
                  //         : null,
                  //   ),
                  // 20.boxH,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12).w,
                    child: Row(
                      children: [
                        Assets.icons.icReport.svg(package: 'gen'),
                        8.boxW,
                        GestureDetector(
                          onTap: () async {
                            try {
                              final reasons = await abuseService.getReasons();
                              if (context.mounted) {
                                _showReportBottomSheet(context, reasons);
                              }
                            } catch (e) {
                              debugPrint('Error: $e');
                              if (context.mounted) {}
                            }
                          },
                          child: AppText.s14w400BdM(
                            context.translation.report,
                            fontFamily: StringConstants.roboto,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF6A6A6A),
                            underline: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  20.boxH,
                  //TODOS: Biznes hasaplar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12).w,
                    child: AppText.s14w400BdM(
                      context.translation.business_accounts,
                      fontSize: 14.sp,
                      fontFamily: StringConstants.roboto,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF000000),
                    ),
                  ),
                  10.boxH,
                  const RecommendedBusinesSection(),
                  20.boxH,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12).w,
                    child: AppText.s14w400BdM(
                      context.translation.other_announcements,
                      fontSize: 14.sp,
                      fontFamily: StringConstants.roboto,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF000000),
                    ),
                  ),
                  10.boxH,
                  RecommendedHousesSection(houseId: houseId),
                  10.boxH,
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BlocBuilder<HouseDetailCubit, HouseDetailState>(
        builder: (context, state) {
          final house = state.response?.data;
          return Container(
            padding: const EdgeInsets.all(8).w,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x408f969e),
                  blurRadius: 3,
                ),
              ],
            ),
            // ignore: use_if_null_to_convert_nulls_to_bools
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: AppBtn(
                    onTap: () async {
                      final houseId = house?.id;
                      final dioInstance = injector<Dio>();
                      if (houseId != null) {
                        await HouseRepository(dioInstance).contactHouseOwner(
                          houseId: houseId,
                          message: '${context.translation.call} request',
                        );
                      }
                      final number = house?.bronNumber?.toString();
                      if (number != null && number.isNotEmpty) {
                        final smsUri = Uri.parse('sms:$number');
                        try {
                          await launchUrl(
                            smsUri,
                            mode: LaunchMode.externalApplication,
                          );
                          // ignore: empty_catches
                        } catch (e) {}
                      }
                    },
                    fontSize: 12.sp,
                    textColor: const Color(0xFF009688),
                    text: context.translation.send_sms,
                    fontWeight: FontWeight.w500,
                    fontFamily: StringConstants.roboto,
                    bgColor: const Color(0xffE9F7F0),
                    ltIcon: SizedBox(
                      height: 18.w,
                      child: Assets.icons.sms.svg(package: 'gen'),
                    ),
                  ),
                ),
                9.boxW,
                Expanded(
                  flex: 2,
                  child: AppBtn(
                    onTap: () async {
                      try {
                        final houseId = house?.id;
                        final dioInstance = injector<Dio>();
                        if (houseId != null) {
                          await HouseRepository(dioInstance).contactHouseOwner(
                            houseId: houseId,
                            message: '${context.translation.call} request',
                          );
                        }
                        final number = house?.bronNumber?.toString();
                        if (number != null && number.isNotEmpty) {
                          final telUri = Uri.parse('tel:$number');
                          await launchUrl(
                            telUri,
                            mode: LaunchMode.externalApplication,
                          );
                        } else {
                          print('Nomeri tapylmady.');
                        }
                        // ignore: empty_catches
                      } catch (e) {}
                    },
                    text: context.translation.call,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: StringConstants.roboto,
                    textColor: const Color(0xFF006169),
                    bgColor: const Color(0xFFE5EFF0),
                    ltIcon: SizedBox(
                      height: 18.w,
                      child: Assets.icons.icCalll.svg(package: 'gen'),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({this.description});
  final String? description;

  @override
  Widget build(BuildContext context) {
    if (description == null) {
      return const SizedBox.shrink();
    }
    return GestureDetector(
      onLongPress: () {
        Clipboard.setData(ClipboardData(text: description!));
        HelpersCopy.showToastCopyy(
            context, context.translation.descriptionCopied);
      },
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10).w,
              padding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 10).w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8).r,
                color: const Color(0xffF6F6F6),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: AppText.s12w400BdS(
                      description!,
                      fontFamily: StringConstants.roboto,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HouseDetailInfo extends StatefulWidget {
  const _HouseDetailInfo({this.house});
  final HouseData? house;

  @override
  State<_HouseDetailInfo> createState() => _HouseDetailInfoState();
}

class _HouseDetailInfoState extends State<_HouseDetailInfo> {
  List<_HouseInfoGridItem> _items = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _items = [];

    if (widget.house?.categoryName != null &&
        widget.house!.categoryName!.isNotEmpty) {
      _items.add(
        _HouseInfoGridItem(
          icon: Assets.icons.icCategoryDetail.svg(package: 'gen'),
          title: context.translation.section,
          value: widget.house!.categoryName!,
        ),
      );
    }

    if (widget.house?.bronNumber != null) {
      _items.add(
        _HouseInfoGridItem(
          icon: Assets.icons.icCall.svg(package: 'gen'),
          title: context.translation.phone_number,
          value: widget.house!.bronNumber.toString(),
        ),
      );
    }

    if (widget.house?.createdAt != null) {
      _items.add(
        _HouseInfoGridItem(
          icon: Assets.icons.icCalendar.svg(package: 'gen'),
          title: context.translation.goylansene,
          value: HelpersCopy.formatDate(widget.house!.createdAt),
        ),
      );
    }

    if (widget.house?.who != null) {
      _items.add(
        _HouseInfoGridItem(
          icon: Assets.icons.icPerson.svg(package: 'gen'),
          title: context.translation.salesman_type,
          value: widget.house!.who.toString(),
        ),
      );
    }

    _items.add(
      _HouseInfoGridItem(
        icon: SizedBox(
          width: 24.w,
          height: 24.w,
          child: Assets.icons.luxx.svg(package: 'gen'),
        ),
        title: context.translation.house_type,
        value: 'Elitga',
      ),
    );

    if (widget.house?.roomNumber != null) {
      _items.add(
        _HouseInfoGridItem(
          icon: SizedBox(
            width: 24.w,
            height: 24.w,
            child: Assets.icons.icFloorCount.svg(package: 'gen'),
          ),
          title: context.translation.room_number,
          value: widget.house!.roomNumber.toString(),
        ),
      );
    }

    _items.add(
      _HouseInfoGridItem(
        icon: Assets.icons.isremont.svg(package: 'gen'),
        title: context.translation.remont_gorn,
        value: 'Ýewroremont',
      ),
    );

    if (widget.house?.area != null) {
      _items.add(
        _HouseInfoGridItem(
          icon: Assets.icons.icSquare.svg(package: 'gen'),
          title: context.translation.total_area,
          value: '${widget.house!.area} m²',
        ),
      );
    }

    if (widget.house?.floorNumber != null) {
      _items.add(
        _HouseInfoGridItem(
          icon: Assets.icons.icStairsFloor.svg(package: 'gen'),
          title: context.translation.floor_number,
          value: widget.house!.floorNumber.toString(),
        ),
      );
    }

    if (widget.house?.price != null) {
      _items.add(
        _HouseInfoGridItem(
          icon: Assets.icons.icPrice.svg(package: 'gen'),
          title: context.translation.price,
          value: '${widget.house!.price} TMT',
          isBold: true,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12).w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              AppText.s14w400BdM(
                context.translation.informations,
                fontFamily: StringConstants.roboto,
                fontSize: 16.sp,
              ),
              5.boxW,
              SizedBox(
                height: 25.w,
                width: 25.w,
                child: Assets.icons.icInfo.svg(package: 'gen'),
              ),
            ],
          ),
          12.boxH,
          GridView.builder(
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 8,
              crossAxisCount: 2,
              crossAxisSpacing: 13,
              childAspectRatio: 130 / 64,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _items.length,
            itemBuilder: (context, index) {
              return _items[index];
            },
          ),
        ],
      ),
    );
  }
}

class _HouseDetailPossibility extends StatefulWidget {
  const _HouseDetailPossibility({this.house});
  final HouseData? house;

  @override
  State<_HouseDetailPossibility> createState() =>
      _HouseDetailPossibilityState();
}

class _HouseDetailPossibilityState extends State<_HouseDetailPossibility> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12).w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.s14w400BdM(
            context.translation.mumkincilikler,
            fontFamily: StringConstants.roboto,
            fontSize: 18.sp,
          ),
          4.boxH,
          GridView.builder(
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 8,
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              childAspectRatio: 100 / 20,
              // c
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.house?.possibilities?.length,
            itemBuilder: (context, index) {
              final possibility = widget.house?.possibilities?[index];
              return _HousePossibilityGridItem(possibility: possibility);
            },
          ),
        ],
      ),
    );
  }
}

class _HouseInfoGridItem extends StatelessWidget {
  const _HouseInfoGridItem({
    required this.icon,
    required this.title,
    required this.value,
    this.isBold = false,
  });

  final Widget icon;
  final String title;
  final String value;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffDDDDDD), width: 1.w),
        borderRadius: BorderRadius.circular(6.w),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFEEEEEE),
            blurRadius: 4.w,
            spreadRadius: 1.w,
            offset: Offset(0, 2.w),
          ),
        ],
      ),
      padding: const EdgeInsets.all(12).w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(width: 18.w, height: 18.w, child: icon),
              8.boxW,
              Expanded(
                child: AppText.s12w400BdS(
                  title,
                  fontFamily: StringConstants.roboto,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF222222),
                  fontSize: 13.sp,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          16.boxH,
          AppText.s12w400BdS(
            value,
            fontFamily: StringConstants.roboto,
            fontWeight: isBold ? FontWeight.bold : FontWeight.w400,
            fontSize: 13.sp,
            color: const Color(0xFF374151),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class _HousePossibilityGridItem extends StatelessWidget {
  const _HousePossibilityGridItem({this.possibility});

  final Possibility? possibility;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          possibility?.buildIcon ?? const SizedBox(),
          18.boxW,
          AppText.s14w400BdM(
            possibility?.title ?? '',
            fontFamily: StringConstants.roboto,
            color: const Color(0xff374151),
          ),
        ],
      ),
    );
  }
}

class _Comments extends StatelessWidget {
  const _Comments({
    required this.itemId,
    required this.itemType,
    required this.commentCount,
  });
  final int itemId;
  final String itemType;
  final int commentCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15).w,
      child: AppBtn(
        onTap: () => _showCommentsBottomSheet(context),
        fontSize: 13.sp,
        text: '${context.translation.comments} ($commentCount)',
        textColor: const Color(0xff555555),
        ltIcon: SizedBox(
          height: 18.w,
          child: Assets.icons.icComment.svg(
            package: 'gen',
            height: 22.w,
            colorFilter: const ColorFilter.mode(
              Color(0xff555555),
              BlendMode.srcIn,
            ),
          ),
        ),
        bgColor: const Color(0xffEEEEEE),
      ),
    );
  }

  void _showCommentsBottomSheet(BuildContext context) {
    // ignore: inference_failure_on_function_invocation
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.7,
        maxChildSize: 0.9,
        builder: (_, controller) => CommentsBottomSheet(
          itemId: itemId.toString(),
          itemType: itemType,
          initialCommentCount: 5,
        ),
      ),
    );
  }
}

class _HeaderInfos extends StatelessWidget {
  const _HeaderInfos({required this.house});

  final HouseData? house;

  @override
  Widget build(BuildContext context) {
    return GradientBgContainer(
      // ignore: use_if_null_to_convert_nulls_to_bools
      isLux: house?.luxeStatus == true,
      // ignore: use_if_null_to_convert_nulls_to_bools
      isVip: house?.vipStatus == true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: AppText.s14w400BdM(
                  house?.name ?? '',
                  fontFamily: StringConstants.roboto,
                  fontSize: 18.sp,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          16.boxH,
          RowMainInfoTile(data: house),
          16.boxH,
          Row(
            children: [
              SizedBox(
                width: 18.w,
                height: 18.w,
                child: Assets.icons.icLocationBlack.svg(package: 'gen'),
              ),
              6.boxW,
              AppText.s12w400BdS(
                '${house?.location?.parentName}\n${house?.location?.name}',
                softWrap: true,
                maxLines: 3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _HouseDetailImgSlider extends StatefulWidget {
  const _HouseDetailImgSlider({required this.data});

  final HouseDetailRoute data;

  @override
  State<_HouseDetailImgSlider> createState() => _HouseDetailImgSliderState();
}

class _HouseDetailImgSliderState extends State<_HouseDetailImgSlider> {
  final ValueNotifier<int> _currentPage = ValueNotifier<int>(1);

  @override
  Widget build(BuildContext context) {
    final width = context.mediaQuery.size.width;

    return Stack(
      children: [
        PageView.builder(
          onPageChanged: (index) {
            _currentPage.value = index + 1;
          },
          itemCount: widget.data.imgUrl?.length ?? 1,
          itemBuilder: (context, index) {
            final imageUrl = widget.data.imgUrl?[index];
            return InkWell(
              onTap: () {
                if (imageUrl != null && imageUrl.isNotEmpty) {
                  Navigator.push(
                    context,
                    // ignore: inference_failure_on_function_invocation
                    CustomPageRoute.slide(
                      HouseImages(
                        houseImagesUrl: widget.data.imgUrl,
                        houseId: widget.data.id ?? 0,
                        houseType: widget.data.type ?? 'House',
                        houseFavorite: widget.data.favorited ?? false,
                      ),
                    ),
                  );
                }
              },
              child: (imageUrl != null && imageUrl.isNotEmpty)
                  ? CustomNetworkImage(
                      imageUrl: imageUrl,
                      memCache: CustomMemCache(
                        width: width.toInt().withDevicePixel(context),
                      ),
                    )
                  : Container(
                      child: Center(
                        child: Assets.icons.jayyok.svg(
                          color: ColorName.blueish,
                          package: 'gen',
                        ),
                      ),
                    ),
            );
          },
        ),
        if (widget.data.imgUrl != null && widget.data.imgUrl!.isNotEmpty)
          Positioned(
            right: 10,
            bottom: 10,
            child: ValueListenableBuilder<int>(
              valueListenable: _currentPage,
              builder: (context, value, child) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ).w,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(8.w),
                  ),
                  child: AppText.s10w400LbS(
                    '${value}/${widget.data.imgUrl?.length}',
                    color: Colors.white,
                    fontFamily: StringConstants.roboto,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
