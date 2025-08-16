import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../core/components/app_text.dart';
import '../../core/components/loading_indicator.dart';
import '../../core/components/try_again_widget.dart';
import '../../localization/extensions.dart';
import '../../product/base/base_status/base_status.dart';
import '../../product/constants/constants.dart';
import '../../product/injection/injector.dart';
import '../../product/transitions/custom_page_route.dart';
import '../../remote/entities/user_profile/user_profile_info_response.dart';
import '../../utils/extensions.dart';
import '../add_house/add_house_view.dart';
import 'bloc/content_bloc.dart';
import 'widgets/content_card_widget.dart';

/// TODOS: can not find enough time to separate components

class ContentView extends StatefulWidget {
  const ContentView({super.key});

  static const routePath = '/content-view';
  static const routeName = 'content-view';

  static Widget builder(BuildContext context) {
    final bloc = injector<ContentBloc>();
    return BlocProvider(
      create: (context) => bloc..add(const ContentEvent.init()),
      child: const ContentView(),
    );
  }

  @override
  State<ContentView> createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  String? _selectedCategoryTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorName.main,
        leading: IconButton(
          onPressed: () => Navigator.maybePop(context),
          icon: Assets.icons.icBackImage.svg(package: 'gen'),
        ),
        title: AppText.s14w400BdM(
          context.translation.my_announcements,
          fontSize: 14.sp,
          color: Colors.white,
          fontFamily: StringConstants.roboto,
        ),
      ),
      floatingActionButton: BlocBuilder<ContentBloc, ContentState>(
        builder: (context, state) {
          final options = state.globalOptions;
          if (options == null) return const SizedBox();

          return FloatingActionButton(
            backgroundColor: const Color(0xFF0A7CCA),
            shape: const CircleBorder(),
            onPressed: () async {
              final isAdded = await Navigator.push<bool?>(
                context,
                CustomPageRoute.slide(AddHouseView.builder(context, options)),
              );
              // ignore: use_if_null_to_convert_nulls_to_bools
              if (isAdded == true && context.mounted) {
                context.read<ContentBloc>().add(const ContentEvent.init());
              }
            },
            child: const Icon(Icons.add, color: Colors.white),
          );
        },
      ),
      body: BlocBuilder<ContentBloc, ContentState>(
        builder: (context, state) {
          if (state.status.isLoading) return LoadingIndicator.circle();
          if (state.status.isFailure) {
            return TryAgainWidget(
              onTryAgain: () =>
                  context.read<ContentBloc>().add(const ContentEvent.init()),
            );
          }

          final categories = state.productCategories;
          final allHouses = state.userHouses;

          if (allHouses == null || allHouses.isEmpty) {
            return Center(
              child: AppText.s14w400BdM(
                context.translation.no_commentss,
                fontSize: 14,
                color: const Color(0xFF555555),
              ),
            );
          }

          final filteredHouses = _selectedCategoryTitle == null
              ? allHouses
              : allHouses
                  .where(
                      (house) => house.categoryName == _selectedCategoryTitle)
                  .toList();

          return Column(
            children: [
              8.boxH,
              Container(
                constraints: BoxConstraints(maxHeight: 30.h),
                child: ContentButtons(
                  categories: categories,
                  selectedCategoryTitle: _selectedCategoryTitle,
                  onCategorySelected: (title) {
                    setState(() {
                      if (title == '') {
                        _selectedCategoryTitle = null;
                      } else {
                        _selectedCategoryTitle = title;
                      }
                    });
                  },
                ),
              ),
              10.boxH,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GridView.builder(
                    primary: false,
                    padding: const EdgeInsets.fromLTRB(2, 0, 2, 24).w,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 167 / 223,
                      crossAxisCount: 2,
                    ),
                    itemCount: filteredHouses.length,
                    itemBuilder: (context, index) {
                      final house = filteredHouses[index];

                      final images = house.images?.map((m) => m.url).toList();
                      return ContentCardWidget(
                        id: house.id!,
                        description: house.description,
                        title: house.name,
                        imgUrls: images ?? [],
                        price: house.price,
                        status: house.statusText,
                        statusColor: house.statusColor,
                        type: house.type,
                        onDeleted: () {
                          context
                              .read<ContentBloc>()
                              .add(const ContentEvent.init());
                        },
                      );
                    },
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

class ContentButtons extends StatelessWidget {
  const ContentButtons({
    super.key,
    this.categories,
    this.selectedCategoryTitle,
    this.onCategorySelected,
  });

  final List<UserProductCategory>? categories;
  final String? selectedCategoryTitle;
  // ignore: inference_failure_on_function_return_type
  final Function(String)? onCategorySelected;

  @override
  Widget build(BuildContext context) {
    final categories = this.categories ?? [];
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 8).w,
      separatorBuilder: (context, index) => 8.boxW,
      scrollDirection: Axis.horizontal,
      itemCount: categories.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return RoundedBlueBorderedButton(
            // text: context.translation.all,
            text: context.translation.all1,
            isSelected: selectedCategoryTitle == null,
            onTap: () => onCategorySelected?.call(''),
          );
        }
        final category = categories[index - 1];
        return RoundedBlueBorderedButton(
          text: category.title ?? '',
          isSelected: selectedCategoryTitle == category.title,
          onTap: () => onCategorySelected?.call(category.title ?? ''),
        );
      },
    );
  }
}

class RoundedBlueBorderedButton extends StatelessWidget {
  const RoundedBlueBorderedButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8).r,
          color: isSelected ? ColorName.main : const Color(0xFFF3F5F6),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8).w,
          child: AppText.s14w400BdM(
            text,
            fontFamily: StringConstants.roboto,
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
            color: isSelected ? Colors.white : const Color(0xFF555555),
          ),
        ),
      ),
    );
  }
}

class ContentHouseImageCarousel extends StatefulWidget {
  const ContentHouseImageCarousel({super.key, required this.imgUrls});
  final List<String?>? imgUrls;

  @override
  State<ContentHouseImageCarousel> createState() =>
      _ContentHouseImageCarouselState();
}

class _ContentHouseImageCarouselState extends State<ContentHouseImageCarousel> {
  final PageController _controller = PageController(keepPage: false);
  final ValueNotifier<int> _pageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    final images = widget.imgUrls ?? [];
    if (images.isEmpty) {
      return AspectRatio(
        aspectRatio: 167 / 155,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(8).r,
            topRight: const Radius.circular(8).r,
          ),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(8).r,
                topRight: const Radius.circular(8).r,
              ),
              color: const Color(0xffEDEBE9),
            ),
            child: Container(
              alignment: Alignment.center,
              height: 56,
              child: Assets.icons.icEmptyHouseDetail.svg(
                package: 'gen',
                colorFilter:
                    const ColorFilter.mode(Color(0xffC6C6C8), BlendMode.srcIn),
              ),
            ),
          ),
        ),
      );
    }
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 167 / 155,
          child: PageView.builder(
            padEnds: false,
            itemCount: images.length,
            controller: _controller,
            onPageChanged: (value) => _pageNotifier.value = value,
            itemBuilder: (context, index) {
              final img = images[index];
              return ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(8).r,
                  topRight: const Radius.circular(8).r,
                ),
                child: CustomNetworkImage(
                  imageUrl: img,
                  memCache: CustomMemCache(
                    // height: 155.withDevicePixel(context),
                    width: 167.withDevicePixel(context),
                  ),
                ),
              );
            },
          ),
        ),
        if (images.length > 2)
          Positioned(
            bottom: 6,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16).w,
              height: 10.h,
              alignment: Alignment.center,
              child: ValueListenableBuilder<int>(
                valueListenable: _pageNotifier,
                builder: (_, page, __) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      images.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: index == (page % images.length)
                            ? 10.h * 0.5
                            : 10.h * 0.4,
                        height: index == (page % images.length)
                            ? 10.h * 0.5
                            : 10.h * 0.4,
                        margin: const EdgeInsets.symmetric(horizontal: 3).w,
                        decoration: BoxDecoration(
                          color: index == (page % images.length)
                              ? Colors.white
                              : Colors.white60,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
      ],
    );
  }
}
