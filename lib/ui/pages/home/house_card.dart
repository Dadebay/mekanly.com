import 'package:carousel_slider/carousel_slider.dart';
import 'package:mekanly_com/ui/pages/home/detail/cached_net_image.dart';

import '/config/config.dart';
import '/localization/locals.dart';
import '/logic/cubits/fav/fav_cubit.dart';
import '/models/category/category_model.dart';
import '/packages.dart';
import '/ui/pages/home/home.dart';
import '/ui/style/style.dart';
import '../../../logic/cubits/cubits.dart';
import '../../style/app_sizes.dart';

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
    double ratio = MediaQuery.of(context).size.width / 360;

    return Container(
      decoration: BoxDecoration(
          // borderRadius: borderAll8,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 3,
              spreadRadius: 3,
            )
          ],
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
        // borderRadius: borderAll8,
        onTap: () {
          go(context, HouseDetailsPage(house: house));
        },
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HouseCardImage(house: house),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        house.name.characters.take(30).toString(),
                        style: TextStyle(
                          fontFamily: robotoBold,
                          fontSize: ((Responsive.isTablet(context) ? AppSizes.pix12 : AppSizes.pix16) * ratio),
                          color: AppColors.mainTextDark,
                          textBaseline: TextBaseline.alphabetic,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          " ${(house.location.parentName == house.location.name) ? house.location.parentName : "${house.location.parentName} - ${house.location.name}"}",
                          style: const TextStyle(
                            fontFamily: robotoRegular,
                            fontWeight: FontWeight.w400,
                            fontSize: AppSizes.pix12 + 3,
                            color: Color(0xff717171),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        ' ${house.description} ',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: AppSizes.pix12 + 2, color: Color(0xff717171), fontFamily: robotoRegular),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              ' ${house.price} TMT',
                              style: const TextStyle(fontSize: AppSizes.pix16 + 2, fontFamily: robotoBold),
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (house.user.id != context.watch<AuthCubit>().repo.user.id)
              Positioned(
                right: 15,
                top: 15,
                child: GestureDetector(
                  onTap: () async {
                    await favCubit.toggleFavorite(house, locals, context);
                  },
                  child: favCubit.isItemFavorited(house.id)
                      ? const Icon(
                          Icons.favorite,
                          color: AppColors.red,
                          size: 35,
                        )
                      : SvgAsset('heart', favCubit.isItemFavorited(house.id) ? AppColors.red : null, size: 30),
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
    return Stack(
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
        widget.house.luxe == true
            ? const SizedBox.shrink()
            : Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(color: const Color(0xff00BEA7).withOpacity(0.4), borderRadius: borderAll6),
                  child: Text(
                    widget.house.categoryName,
                    style: const TextStyle(color: Colors.white, fontFamily: robotoSemiBold),
                  ),
                ),
              ),
        Positioned(
          bottom: AppSizes.pix6,
          child: Row(
            children: [...indicators(widget.house.images.length, _imageIndex, context)],
          ),
        )
      ],
    );
  }
}

class HouseCardEDIT extends StatelessWidget {
  const HouseCardEDIT({
    super.key,
    required this.house,
    this.status,
    this.bronStatus,
    required this.leaveTime,
  });

  final House house;
  final DateTime leaveTime;
  final double total = 0;
  final String? status;
  final String? bronStatus;

  @override
  Widget build(BuildContext context) {
    final favCubit = context.read<FavCubit>();

    var locals = Locals.of(context);
    double ratio = MediaQuery.of(context).size.width / 360;

    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(child: HouseCardImageEDIT(house: house)),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      house.luxe == true
                          ? const SizedBox.shrink()
                          : Text(
                              house.categoryName,
                              style: const TextStyle(color: AppColors.mainTextDark, fontFamily: robotoSemiBold),
                            ),
                      // Text(
                      //   house.name.characters.take(30).toString(),
                      //   style: TextStyle(
                      //     fontFamily: robotoBold,
                      //     fontSize: ((Responsive.isTablet(context) ? AppSizes.pix12 : AppSizes.pix16) * ratio),
                      //     color: AppColors.mainTextDark,
                      //     textBaseline: TextBaseline.alphabetic,
                      //   ),
                      //   maxLines: 1,
                      //   overflow: TextOverflow.ellipsis,
                      // ),
                      Text(
                        (house.location.parentName == house.location.name) ? house.location.parentName : "${house.location.parentName} - ${house.location.name}",
                        style: const TextStyle(
                          fontFamily: robotoRegular,
                          fontWeight: FontWeight.w400,
                          fontSize: AppSizes.pix12 + 3,
                          color: Color(0xff717171),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        ' ${house.description} ',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: AppSizes.pix12 + 2, color: Color(0xff717171), fontFamily: robotoRegular),
                      ),
                      Text(
                        ' ${house.price} TMT',
                        style: const TextStyle(fontSize: AppSizes.pix16 + 2, fontFamily: robotoBold),
                      ),
                      if (leaveTime.isBefore(DateTime.now()))
                        Container(
                          width: double.infinity,
                          alignment: Alignment.centerRight,
                          child: Tex(
                            locals.expired,
                            con: context,
                            col: AppColors.red,
                          ).subtitle,
                        )
                      else
                        Container(
                          width: double.infinity,
                          alignment: Alignment.centerRight,
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
                    ],
                  ),
                ),
              ),
            ],
          ),
          if (house.user.id != context.watch<AuthCubit>().repo.user.id)
            Positioned(
              right: 15,
              top: 15,
              child: GestureDetector(
                onTap: () async {
                  await favCubit.toggleFavorite(house, locals, context);
                },
                child: favCubit.isItemFavorited(house.id)
                    ? const Icon(
                        Icons.favorite,
                        color: AppColors.red,
                        size: 35,
                      )
                    : SvgAsset('heart', favCubit.isItemFavorited(house.id) ? AppColors.red : null, size: 30),
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
    );
  }
}

class HouseCardImageEDIT extends StatefulWidget {
  const HouseCardImageEDIT({
    super.key,
    required this.house,
  });

  final House house;

  @override
  State<HouseCardImageEDIT> createState() => _HouseCardImageEDITState();
}

class _HouseCardImageEDITState extends State<HouseCardImageEDIT> {
  int _imageIndex = 0;
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
