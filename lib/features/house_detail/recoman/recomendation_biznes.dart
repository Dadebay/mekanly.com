import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import '../../../core/components/loading_indicator.dart';
import '../../../product/constants/constants.dart';
// ignore: depend_on_referenced_packages
import '../../../product/transitions/custom_page_route.dart';
import '../../../remote/repositories/recom_business/recom_bis_repozitory.dart'
    show BusinesEntity, BusinesRepository, RecommendationProviderBusines;
import '../../../utils/api_provider.dart';
import '../../business_porfile_detail/business_porfile_detail_view.dart';

class RecommendedBusinesSection extends StatefulWidget {
  const RecommendedBusinesSection({super.key});

  @override
  State<RecommendedBusinesSection> createState() =>
      _RecommendedBusinesSectionState();
}

class _RecommendedBusinesSectionState extends State<RecommendedBusinesSection> {
  late final RecommendationProviderBusines _provider;

  @override
  void initState() {
    super.initState();
    final dio = Dio();
    _provider = RecommendationProviderBusines(BusinesRepository(dio));
    _provider.fetchRecommendations();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _provider,
      child: Consumer<RecommendationProviderBusines>(
        builder: (context, provider, _) {
          if (provider.isLoading) {
            return Center(
              child: LoadingIndicator.circle(),
            );
          }
          if (provider.error != null) {
            return Text('Error!: ${provider.error}');
          }
          if (provider.recommendations.isEmpty) {
            return const SizedBox.shrink();
          }

          return SizedBox(
            height:
                ((MediaQuery.of(context).size.width * 0.35 * 198) / 131) + 12.h,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              scrollDirection: Axis.horizontal,
              itemCount: provider.recommendations.length,
              itemBuilder: (context, index) {
                return BusinessCard(house: provider.recommendations[index]);
              },
              separatorBuilder: (context, index) => SizedBox(width: 14.w),
            ),
          );
        },
      ),
    );
  }
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key, required this.house});
  final BusinesEntity house;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.35;
    final logoUrl = house.logo ?? '';
    final title = house.brand ?? '';
    final description = house.briefDescription ?? '';
    final phone = (house.phoneNumbers?.isNotEmpty ?? false)
        ? house.phoneNumbers!.first
        : '';

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          // ignore: inference_failure_on_function_invocation
          CustomPageRoute.slide(
              BusinessProfileDetailView.builder(context, house.id)),
        );
      },
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(246, 246, 246, 1),
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
          border: Border.all(
            color: Colors.grey.withOpacity(0.1),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        child: Column(
          children: [
            Container(
              width: 70.w,
              height: 70.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(56, 76, 255, 1),
                    Color.fromRGBO(0, 163, 255, 1),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(1.w),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.network(
                      ApiProvider().baseUrl + logoUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) =>
                          Icon(Icons.image, size: 40.w),
                    ),
                  ),
                ),
              ),
            ),
            10.boxH,
            Text(
              title.toUpperCase(),
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 11.sp,
                color: const Color.fromARGB(255, 40, 40, 40),
                fontFamily: StringConstants.roboto,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            6.boxH,
            Text(
              description,
              style: TextStyle(
                fontSize: 10.sp,
                color: const Color.fromARGB(255, 86, 86, 86),
                fontFamily: StringConstants.roboto,
              ),
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            10.boxH,
            Text(
              phone,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10.sp,
                color: const Color.fromARGB(255, 34, 34, 34),
                fontFamily: StringConstants.roboto,
              ),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}

extension Box on num {
  SizedBox get boxH => SizedBox(height: toDouble().h);
  SizedBox get boxW => SizedBox(width: toDouble().w);
}
