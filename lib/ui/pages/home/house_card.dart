import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:intl/intl.dart';
import 'package:mekanly_com/ui/pages/home/detail/cached_net_image.dart';

import '../../../logic/cubits/cubits.dart';
import '../../../logic/cubits/lang/lang_cubit.dart';
import '../../style/app_sizes.dart';
import '/config/config.dart';
import '/localization/locals.dart';
import '/logic/cubits/fav/fav_cubit.dart';
import '/models/category/category_model.dart';
import '/packages.dart';
import '/ui/pages/home/home.dart';
import '/ui/style/style.dart';

class HouseCard extends StatelessWidget {
  const HouseCard({
    super.key,
    required this.house,
    this.status,
    this.bronStatus,
  });

  final House house;
  final double total = 0;
  final String? status;
  final String? bronStatus;

  @override
  Widget build(BuildContext context) {
    final favCubit = context.read<FavCubit>();

    var locals = Locals.of(context);

    return Container(
      decoration: BoxDecoration(
          borderRadius: borderAll,
          gradient: house.luxe
              ? const LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffF4E49c),
                    Color(0xffFefdf7),
                  ],
                )
              : null),
      child: InkWell(
        borderRadius: borderAll15,
        onTap: () {
          go(context, HouseDetailsPage(house: house));
        },
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                HouseCardImage(house: house),
                Padding(
                  padding: const EdgeInsets.fromLTRB(AppSizes.pix8, AppSizes.pix8, AppSizes.pix8, AppSizes.pix4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Tex(
                        house.name.characters.take(30).toString(),
                        con: context,
                        weight: FontWeight.bold,
                      ).title,
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(AppSizes.pix4 - 1),
                              child: Text(
                                "${locals.place}: ${(house.location.parentName == house.location.name) ? house.location.parentName : "${house.location.parentName} - ${house.location.name}"}",
                                style: const TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: AppColors.mainTextDark,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(Icons.star_purple500_outlined, size: 20, color: AppColors.yellow),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Tex(star(total, house), con: context).subtitle,
                              ),
                            ],
                          ),
                        ],
                      ),
                      BlocBuilder<LangCubit, Locale>(
                        builder: (context, locale) {
                          return Row(
                            children: [
                              Tex(
                                      (house.enterTime.month == house.leaveTime.month)
                                          ? '${house.enterTime.day} - ${house.leaveTime.day} ${DateFormat.MMMM(locale.languageCode).format(house.leaveTime).capitalizeFirst}'
                                          : '${house.enterTime.day} ${DateFormat.MMMM(locale.languageCode).format(house.enterTime).capitalizeFirst} - ${house.leaveTime.day} ${DateFormat.MMMM(locale.languageCode).format(house.leaveTime).capitalizeFirst}',
                                      con: context)
                                  .subtitle,
                              const Spacer(),
                              if (house.status == 'active')
                                Tex(
                                  bronStatus ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  con: context,
                                  col: !(house.bronStatus) ? AppColors.green : AppColors.red,
                                ).subtitle,
                            ],
                          );
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Tex("${locals.dailyPrice}:", con: context).subtitle,
                              Text(
                                ' ${house.price} TMT',
                                style: const TextStyle(fontSize: AppSizes.pix12, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Spacer(flex: 1),
                          Flexible(
                            flex: 4,
                            child: InkWell(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Tex(status ?? '',
                                        overflow: TextOverflow.ellipsis,
                                        con: context,
                                        col: house.status == 'pending'
                                            ? AppColors.buttons
                                            : house.status == 'non-active'
                                                ? Colors.red
                                                : AppColors.green)
                                    .subtitle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (house.user.id != context.watch<AuthCubit>().repo.user.id)
              Positioned(
                right: 5,
                top: 4,
                child: IconButton(
                  onPressed: () async {
                    await favCubit.toggleFavorite(house, locals, context);
                  },
                  icon: Stack(
                    children: [
                      Icon(
                        favCubit.isItemFavorited(house.id) ? Icons.favorite : Icons.favorite_border,
                        size: 27,
                        color: AppColors.red,
                      ),
                      const Icon(
                        Icons.favorite_border,
                        size: 27,
                        color: AppColors.mainText,
                      ),
                    ],
                  ),
                ),
              ),
            if (house.luxe)
              const Positioned(
                left: AppSizes.pix10,
                top: AppSizes.pix10,
                child: SvgAsset('luxe', null, size: 30),
              ),
          ],
        ),
      ),
    );
  }
}

class HouseCardImage extends StatefulWidget {
  const HouseCardImage({
    super.key,
    required this.house,
  });

  final House house;

  @override
  State<HouseCardImage> createState() => _HouseCardImageState();
}

class _HouseCardImageState extends State<HouseCardImage> {
  int _imageIndex = 0;
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderAll10,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CarouselSlider(
            carouselController: _carouselController,
            items: widget.house.images.map((imagePath) {
              var img = imagePath.url;
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    color: AppColors.secondaryText.withOpacity(.4),
                    height: width(context) - 55,
                    width: MediaQuery.of(context).size.width,
                    child: CachedNetImage(img: img),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  _imageIndex = index;
                });
              },
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 500),
              viewportFraction: 1,
              height: width(context) - 55,
            ),
          ),
          Positioned(
            bottom: AppSizes.pix6,
            child: Row(
              children: [...indicators(widget.house.images.length, _imageIndex, context)],
            ),
          )
        ],
      ),
    );
  }
}