import 'dart:math';
import 'package:common/common.dart';
import 'package:dio/dio.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import '../../core/components/app_btn.dart';
import '../../core/components/app_text.dart';
import '../../core/components/loading_indicator.dart';
import '../../core/components/try_again_widget.dart';
import '../../localization/extensions.dart';
import '../../product/base/base_status/base_status.dart';
import '../../product/constants/constants.dart';
import '../../product/injection/injector.dart';
import '../../product/transitions/custom_page_route.dart';
import '../../remote/entities/global_options/global_options.dart';
import '../../remote/entities/house_detail/house_detail_response.dart';
import '../../remote/repositories/add_house/house_crud.dart';
import '../../utils/abuse/service.dart';
import '../../utils/extensions.dart';
import '../../utils/helpers.dart';
import '../../utils/api_provider.dart';
import '../add_house/add_house_update_view.dart';
import '../content/bloc/content_bloc.dart';
import 'commit/commentbottomsheet.dart';
import 'cubit/house_detail_cubit.dart';
import 'house_images.dart';

import 'settings/settings_view.dart';
import 'widgets/gradient_bg_container.dart';
import 'widgets/pop_up.dart';
import 'widgets/row_main_info_tile.dart';

class HouseDetailOwnerRoute {
  HouseDetailOwnerRoute({
    required this.favorited,
    required this.imgUrl,
    required this.id,
    this.status,
    this.houseData,
    this.type,
  });

  final List<String?>? imgUrl;
  final int? id;
  final String? status;
  final String? type;
  final bool? favorited;
  final HouseDetailOwnerRoute? houseData;
}

class HouseDetailViewOwner extends StatefulWidget {
  const HouseDetailViewOwner({
    super.key,
    required this.data,
    this.status,
    this.type,
    this.options,
  });

  static const routePath = '/house-detail-view';
  static const routeName = 'house-detail-view';

  static Widget builder(
    BuildContext context,
    HouseDetailOwnerRoute data, {
    String? status,
    String? type,
  }) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              injector<HouseDetailCubit>()..getHouseDetail(data.id ?? 0),
        ),
        BlocProvider(
          create: (context) =>
              injector<ContentBloc>()..add(const ContentEvent.init()),
        ),
      ],
      child: HouseDetailViewOwner(data: data, status: status, type: type),
    );
  }

  final HouseDetailOwnerRoute data;
  final String? status;
  final String? type;
  final GlobalOptions? options;

  @override
  State<HouseDetailViewOwner> createState() => _HouseDetailViewState();
}

class _HouseDetailViewState extends State<HouseDetailViewOwner> {
  double _scrollPercentage = 0;
  bool shareLink = false;
  bool shareImage = true;

  late String link;
  late List<String> imageUrls;

  Color getStatusColor(String? status) {
    switch (status) {
      case 'Garaşylýar':
        return ColorName.blueish;
      case 'Kabul edildi':
        return const Color.fromARGB(255, 0, 130, 4);
      case 'Kabul edilmedi':
        return Colors.red;
      case 'pending':
        return ColorName.blueish;
      case 'active':
        return const Color.fromARGB(255, 0, 130, 4);
      case 'not_active':
        return Colors.red;
      default:
        return Colors.black;
    }
  }

  @override
  void initState() {
    super.initState();
    final rawImageUrl = widget.data.imgUrl?.toString() ?? '';

    if (rawImageUrl.startsWith('[') && rawImageUrl.endsWith(']')) {
      final cleanStr = rawImageUrl.substring(1, rawImageUrl.length - 1);
      imageUrls = cleanStr.split(',').map((e) => e.trim()).toList();
    } else if (rawImageUrl.isNotEmpty) {
      imageUrls = [rawImageUrl];
    } else {
      imageUrls = [];
    }

    while (imageUrls.length < 3) {
      imageUrls.add('');
    }

    link = 'https://mekanly.com/house/${widget.data.id}';
  }

  Future<void> shareImagesWithDio(
    List<String> imageUrls, {
    String? text,
  }) async {
    try {
      final tempDir = await getTemporaryDirectory();
      final files = <XFile>[];

      for (var i = 0; i < imageUrls.length; i++) {
        final imageUrl = imageUrls[i];
        if (imageUrl.isEmpty) continue;

        final filePath = '${tempDir.path}/shared_image_$i.jpg';

        final dio = Dio();
        await dio.download(imageUrl, filePath);

        files.add(XFile(filePath));
      }

      if (files.isNotEmpty) {
        // ignore: deprecated_member_use
        await Share.shareXFiles(files, text: text);
      } else if (text != null) {
        // ignore: deprecated_member_use
        await Share.share(text);
      }
      // ignore: empty_catches
    } catch (e) {}
  }

  final abuseService = AbuseService();

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
              expandedHeight: 0,
              backgroundColor: ColorName.main,
              automaticallyImplyLeading: false,
              leading: IconButton(
                icon: Assets.icons.icBack.svg(
                  // ignore: deprecated_member_use
                  color: Colors.white,
                  package: 'gen',
                  width: 25,
                  height: 25,
                ),
                onPressed: () => Navigator.pop(context),
              ),
              // actions: [
              //   Container(
              //     margin: const EdgeInsets.only(right: 15),
              //     child: GestureDetector(
              //       onTapDown: (TapDownDetails details) {
              //         final position = details.globalPosition;

              //         showMenu<String>(
              //           context: context,
              //           position: RelativeRect.fromLTRB(
              //             position.dx - 110,
              //             position.dy + 10,
              //             position.dx - 20,
              //             position.dy + 0,
              //           ),
              //           color: Colors.white,
              //           shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(2),
              //             side: BorderSide(
              //               // ignore: deprecated_member_use
              //               color: Colors.black.withOpacity(0.2),
              //             ),
              //           ),
              //           items: [
              //             PopupMenuItem<String>(
              //               value: 'hyzmatlar',
              //               padding: const EdgeInsets.symmetric(
              //                 horizontal: 10,
              //                 vertical: 2,
              //               ),
              //               height: 25,
              //               child: Container(
              //                 alignment: Alignment.center,
              //                 child: Text(
              //                   context.translation.services,
              //                   style: TextStyle(
              //                     fontSize: 11.sp,
              //                     fontWeight: FontWeight.w400,
              //                     fontFamily: StringConstants.roboto,
              //                     color: Colors.black,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ).then((value) async {
              //           if (value == 'hyzmatlar') {
              //             final houseId = widget.data.id;

              //             try {
              //               if (houseId == null) return;
              //               final type = (widget.data.type == 'house')
              //                   ? 'House'
              //                   : 'ShopProduct';

              //               final response =
              //                   await HouseService().fetchServiceList(
              //                 id: houseId,
              //                 type: type,
              //               );
              //               final dataMap =
              //                   response.data as Map<String, dynamic>;
              //               final serviceList =
              //                   dataMap['data'] as List<dynamic>;
              //               // ignore: use_build_context_synchronously
              //               final house = context
              //                   .read<HouseDetailCubit>()
              //                   .state
              //                   .response
              //                   ?.data;

              //               if (house == null) {
              //                 if (context.mounted) {}
              //                 return;
              //               }
              //               await Navigator.push(
              //                 // ignore: use_build_context_synchronously
              //                 context,
              //                 // ignore: inference_failure_on_function_invocation
              //                 CustomPageRoute.slide(
              //                   BlocProvider.value(
              //                     // ignore: use_build_context_synchronously
              //                     value: context.read<HouseDetailCubit>(),
              //                     child: SettingsScreen(
              //                       houseId: houseId,
              //                       house: house,
              //                       serviceList: serviceList,
              //                     ),
              //                   ),
              //                 ),
              //               );
              //               // ignore: empty_catches
              //             } catch (e) {}
              //           }
              //         });
              //       },
              //       child: Assets.icons.icDotsVertical.svg(
              //         package: 'gen',
              //         // ignore: deprecated_member_use
              //         color: Colors.white,
              //         height: 20,
              //         width: 20,
              //       ),
              //     ),
              //   ),
              // ],
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
                              'Arenda kwartira',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 320,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: _HouseDetailImgSlider(
                        data: widget.data,
                        status: widget.status,
                        options: widget.options,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 7.sp,
                              height: 7.sp,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: getStatusColor(widget.status),
                              ),
                            ),
                            4.boxW,
                            AppText.s10w400LbS(
                              widget.status ?? '',
                              color: Colors.black,
                              fontFamily: StringConstants.roboto,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          '1/${widget.data.imgUrl?.length ?? 1}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
            final houseType = house?.type;

            final type = (houseType == 'house') ? 'House' : 'ShopProduct';
            return SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _HeaderInfos(house: house),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12).w,
                    child: AppText.s14w400BdM(
                      // ignore: lines_longer_than_80_chars
                      '${context.translation.announcement_status} : ${widget.status}',
                      fontSize: 12.sp,
                      fontFamily: StringConstants.roboto,
                      fontWeight: FontWeight.w400,
                      color: getStatusColor(widget.status),
                    ),
                  ),
                  12.boxH,
                  if (house?.exclusive == 1)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12).w,
                      child: const ClickableBanner(),
                    )
                  else
                    const SizedBox.shrink(),
                  12.boxH,
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

                      if (houseId == null) return;

                      final shouldDelete = await showDialog<bool>(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            insetPadding:
                                const EdgeInsets.symmetric(horizontal: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    context.translation.notification,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      // ignore: lines_longer_than_80_chars
                                      color: Color.fromARGB(255, 34, 34, 34),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    context
                                        .translation
                                        // ignore: lines_longer_than_80_chars
                                        .are_you_sure_you_want_to_delete_this_announcement,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 34, 34, 34),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context, false);
                                        },
                                        child: Text(
                                          context.translation.cancel,
                                          style: const TextStyle(
                                            color: Color.fromARGB(
                                              255,
                                              155,
                                              38,
                                              18,
                                            ),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context, true);
                                        },
                                        child: Text(
                                          context.translation.yes,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: ColorName.blueish,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );

                      // ignore: use_if_null_to_convert_nulls_to_bools
                      if (shouldDelete == true) {
                        try {
                          await HouseService().deleteHouse(houseId);
                          // ignore: use_build_context_synchronously
                          Navigator.pop(context, true);
                          // ignore: empty_catches
                        } catch (e) {}
                      }
                    },
                    fontSize: 12.sp,
                    textColor: const Color.fromARGB(255, 155, 38, 18),
                    text: context.translation.delete1,
                    fontWeight: FontWeight.w500,
                    fontFamily: StringConstants.roboto,
                    bgColor: const Color.fromARGB(255, 255, 222, 222),
                    ltIcon: SizedBox(
                      height: 18.w,
                      child: Assets.icons.deletee.svg(package: 'gen'),
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
                        final houseType = house?.type;
                        if (houseId == null || houseType == null) return;

                        final type =
                            (houseType == 'house') ? 'House' : 'Product';

                        final response = await HouseService().fetchServiceList(
                          id: houseId,
                          type: type,
                        );
                        final dataMap = response.data as Map<String, dynamic>;
                        print('listt $dataMap');
                        final serviceList = dataMap['data'] as List<dynamic>;

                        await Navigator.push(
                          // ignore: use_build_context_synchronously
                          context,
                          // ignore: inference_failure_on_function_invocation
                          CustomPageRoute.slide(
                            SettingsScreen.builder(
                              houseId: houseId,
                              house: house!,
                              serviceList: serviceList,
                            ),
                          ),
                        );
                      } catch (e) {
                        debugPrint('Error fetching service list: $e');
                      }
                    },
                    text: context.translation.edit1,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: StringConstants.roboto,
                    textColor: const Color.fromARGB(255, 58, 139, 207),
                    bgColor: const Color.fromARGB(255, 229, 246, 254),
                    ltIcon: SizedBox(
                      height: 18.w,
                      child: Assets.icons.sazlama.svg(package: 'gen'),
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
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10).w,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10).w,
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
  const _HouseDetailImgSlider({
    required this.data,
    this.status,
    required this.options,
  });

  final HouseDetailOwnerRoute data;
  final String? status;
  final GlobalOptions? options;

  @override
  State<_HouseDetailImgSlider> createState() => _HouseDetailImgSliderState();
}

class _HouseDetailImgSliderState extends State<_HouseDetailImgSlider> {
  final ValueNotifier<int> _currentPage = ValueNotifier<int>(1);
  Color getStatusColor(String? status) {
    switch (status) {
      case 'Garaşylýar':
        return ColorName.blueish;
      case 'Kabul edildi':
        return const Color.fromARGB(255, 0, 130, 4);
      case 'Kabul edilmedi':
        return Colors.red;
      case 'pending':
        return ColorName.blueish;
      case 'active':
        return const Color.fromARGB(255, 0, 130, 4);
      case 'not_active':
        return Colors.red;
      default:
        return Colors.black;
    }
  }

  Future<void> shareImagesWithDio(
    List<String> imageUrls, {
    String? text,
  }) async {
    try {
      final tempDir = await getTemporaryDirectory();
      final files = <XFile>[];

      for (var i = 0; i < imageUrls.length; i++) {
        final imageUrl = imageUrls[i];
        if (imageUrl.isEmpty) continue;

        final filePath = '${tempDir.path}/shared_image_$i.jpg';

        final dio = Dio();
        await dio.download(imageUrl, filePath);

        files.add(XFile(filePath));
      }

      if (files.isNotEmpty) {
        // ignore: deprecated_member_use
        await Share.shareXFiles(files, text: text);
      } else if (text != null) {
        // ignore: deprecated_member_use
        await Share.share(text);
      }
      // ignore: empty_catches
    } catch (e) {}
  }

  final abuseService = AbuseService();
  void _showShareBottomSheet(BuildContext context, List<String> imageUrls) {
    var shareLink = true;
    var shareImage = false;

    // ignore: inference_failure_on_function_invocation
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: const Color.fromARGB(255, 245, 240, 234),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            final isRTL = Directionality.of(context) == TextDirection.rtl;

            return Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Assets.icons.close.svg(package: 'gen'),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  const SizedBox(height: 15),
                  _AnimatedImageStack(imageUrls: imageUrls, isRTL: isRTL),
                  Text(
                    context.translation.share_with_friends,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 34, 34, 34),
                      fontFamily: StringConstants.roboto,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Checkbox(
                        value: shareLink,
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        onChanged: (value) {
                          setState(() {
                            shareLink = value!;
                            if (value) shareImage = false;
                          });
                        },
                      ),
                      Text(
                        context.translation.share_link,
                        style: const TextStyle(
                          fontFamily: StringConstants.roboto,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 34, 34, 34),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: shareImage,
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        onChanged: (value) {
                          setState(() {
                            shareImage = value!;
                            if (value) shareLink = false;
                          });
                        },
                      ),
                      Text(
                        context.translation.share_photo,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: StringConstants.roboto,
                          color: Color.fromARGB(255, 34, 34, 34),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 34, 34, 34),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                        if (shareLink) {
                          final urlText =
                              imageUrls.where((e) => e.isNotEmpty).join('\n');
                          // ignore: deprecated_member_use
                          await Share.share(urlText);
                        }
                        if (shareImage) {
                          await shareImagesWithDio(imageUrls);
                        }
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.share, color: Colors.white),
                          const SizedBox(width: 8),
                          Text(
                            context.translation.share,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: StringConstants.roboto,
                              color: Colors.white,
                            ),
                          ),
                        ],
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

  @override
  Widget build(BuildContext context) {
    final width = context.mediaQuery.size.width;
    return Stack(
      children: [
        PageView.builder(
          onPageChanged: (index) {
            _currentPage.value = index + 1;
          },
          itemCount: widget.data.imgUrl?.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
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
              },
              child: CustomNetworkImage(
                imageUrl: ApiProvider().baseUrl + (widget.data.imgUrl?[index] ?? ''),
                memCache: CustomMemCache(
                  width: width.toInt().withDevicePixel(context),
                ),
              ),
            );
          },
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Row(
            children: [
              GestureDetector(
                child: Assets.icons.sharetaze.svg(
                  package: 'gen',
                ),
                onTap: () {
                  final rawImageUrl = widget.data.imgUrl?.toString() ?? '';

                  List<String> imageUrls;

                  if (rawImageUrl.startsWith('[') &&
                      rawImageUrl.endsWith(']')) {
                    final cleanStr = rawImageUrl.substring(
                      1,
                      rawImageUrl.length - 1,
                    );
                    imageUrls =
                        cleanStr.split(',').map((e) => e.trim()).toList();
                  } else if (rawImageUrl.isNotEmpty) {
                    imageUrls = [rawImageUrl];
                  } else {
                    imageUrls = [];
                  }
                  while (imageUrls.length < 3) {
                    imageUrls.add('');
                  }

                  _showShareBottomSheet(context, imageUrls);
                },
              ),
              12.boxW,
              BlocBuilder<HouseDetailCubit, HouseDetailState>(
                builder: (context, houseState) {
                  final house = houseState.response?.data;
                  final isHouseLoaded =
                      houseState.status.isSuccess && house != null;

                  return BlocBuilder<ContentBloc, ContentState>(
                    builder: (context, contentState) {
                      final options = contentState.globalOptions;
                      final isOptionsLoaded = options != null;

                      final isAllDataLoaded = isHouseLoaded && isOptionsLoaded;

                      return GestureDetector(
                        onTap: isAllDataLoaded
                            ? () async {
                                final isUpdated = await Navigator.push<bool?>(
                                  context,
                                  CustomPageRoute.slide(
                                    AddHouseViewUpdate.builder(
                                      context,
                                      options: options,
                                      house: house,
                                    ),
                                  ),
                                );

                                // ignore: use_if_null_to_convert_nulls_to_bools
                                if (isUpdated == true && context.mounted) {
                                  context
                                      .read<ContentBloc>()
                                      .add(const ContentEvent.init());
                                  await context
                                      .read<HouseDetailCubit>()
                                      .getHouseDetail(house.id ?? 0);
                                }
                              }
                            : null,
                        child: Opacity(
                          opacity: isAllDataLoaded ? 1.0 : 0.5,
                          child: Assets.icons.editt.svg(
                            package: 'gen',
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: SizedBox(
            height: 20.w,
            child: Assets.icons.logoo.svg(package: 'gen'),
          ),
        ),
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
                  '$value/${widget.data.imgUrl?.length}',
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

class _AnimatedImageStack extends StatefulWidget {
  const _AnimatedImageStack({required this.imageUrls, required this.isRTL});
  final List<String> imageUrls;
  final bool isRTL;

  @override
  State<_AnimatedImageStack> createState() => _AnimatedImageStackState();
}

class _AnimatedImageStackState extends State<_AnimatedImageStack>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _rotateLeft;
  late final Animation<double> _rotateRight;
  late final Animation<double> _translateY;
  late final Animation<double> _translateX1;
  late final Animation<double> _translateX2;

  final double imageSize = 130;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _rotateLeft = Tween<double>(
      begin: 0,
      end: -pi / 18,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _rotateRight = Tween<double>(
      begin: 0,
      end: pi / 18,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _translateY = Tween<double>(
      begin: 0,
      end: -40,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _translateX1 = Tween<double>(
      begin: 0,
      end: -20,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _translateX2 = Tween<double>(
      begin: 0,
      end: 20,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildImage(String url) {
    return Container(
      width: imageSize,
      height: imageSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 4),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 6, offset: Offset(2, 2)),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          ApiProvider().baseUrl + url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final urls =
        widget.imageUrls.where((url) => url.trim().isNotEmpty).toList();
    final count = urls.length.clamp(0, 3);
    if (count == 0) {
      return const SizedBox.shrink();
    }

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        if (count == 1) {
          return Center(child: _buildImage(urls[0]));
        } else if (count == 2) {
          return Center(
            child: SizedBox(
              width: imageSize + 60,
              height: imageSize + 40,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Transform.translate(
                    offset: Offset(_translateX1.value, 0),
                    child: Transform.rotate(
                      angle: _rotateLeft.value,
                      alignment: Alignment.bottomLeft,
                      child: _buildImage(urls[1]),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(_translateX2.value, 0),
                    child: Transform.rotate(
                      angle: _rotateRight.value,
                      alignment: Alignment.bottomRight,
                      child: _buildImage(urls[0]),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Center(
            child: SizedBox(
              width: imageSize + 60,
              height: imageSize + 60,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Transform.translate(
                    offset: Offset(0, _translateY.value),
                    child: _buildImage(urls[2]),
                  ),
                  Transform.translate(
                    offset: Offset(_translateX1.value, 0),
                    child: Transform.rotate(
                      angle: _rotateLeft.value,
                      alignment: Alignment.bottomLeft,
                      child: _buildImage(urls[1]),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(_translateX2.value, 0),
                    child: Transform.rotate(
                      angle: _rotateRight.value,
                      alignment: Alignment.bottomRight,
                      child: _buildImage(urls[0]),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
