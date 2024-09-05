import 'package:carousel_slider/carousel_slider.dart';
import 'package:iconly/iconly.dart';
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
          borderRadius: borderAll6,
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
                          "${locals.place}: ${(house.location.parentName == house.location.name) ? house.location.parentName : "${house.location.parentName} - ${house.location.name}"}",
                          style: const TextStyle(
                            fontFamily: robotoRegular,
                            fontWeight: FontWeight.w400,
                            fontSize: AppSizes.pix12 + 3,
                            color: AppColors.mainTextDark,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "${locals.description}:",
                            maxLines: 1,
                            style: const TextStyle(fontSize: AppSizes.pix12 + 2, fontFamily: robotoRegular),
                          ),
                          Expanded(
                            child: Text(
                              ' ${house.description} ',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: AppSizes.pix12 + 2, fontFamily: robotoRegular),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "${locals.dailyPrice}:",
                                  style: const TextStyle(fontSize: AppSizes.pix16, fontFamily: robotoRegular),
                                ),
                                Text(
                                  ' ${house.price} TMT',
                                  style: const TextStyle(fontSize: AppSizes.pix16 + 2, fontFamily: robotoBold),
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (house.user.id != context.watch<AuthCubit>().repo.user.id)
              Positioned(
                right: 5,
                top: 5,
                child: GestureDetector(
                  onTap: () async {
                    await favCubit.toggleFavorite(house, locals, context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: borderAll15),
                    child: Icon(
                      favCubit.isItemFavorited(house.id) ? IconlyBold.heart : IconlyLight.heart,
                      size: 24,
                      color: favCubit.isItemFavorited(house.id) ? AppColors.red : Colors.grey,
                    ),
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
          widget.house.luxe == true
              ? const SizedBox.shrink()
              : Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(color: AppColors.secondary, borderRadius: borderAll6),
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
      ),
    );
  }
}
