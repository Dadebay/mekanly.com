// ignore_for_file: avoid_dynamic_calls, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';

import '../../../localization/extensions.dart';
import '../../../product/helpers/helpers.dart';
import '../../../product/injection/injector.dart';
import '../../../product/transitions/custom_page_route.dart';
import '../../../remote/entities/house_detail/house_detail_response.dart';
import '../../../remote/repositories/add_house/house_crud.dart';
import '../../add_house/add_house_update_view.dart';
import '../../content/bloc/content_bloc.dart';
import '../payment/payment_card_view.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({
    super.key,
    this.houseId,
    required this.house,
    required this.serviceList,
  });
  final int? houseId;
  // ignore: strict_raw_type
  final HouseData house;

  final List<dynamic> serviceList;
  static Widget builder({
    required int? houseId,
    required HouseData house,
    required List<dynamic> serviceList,
  }) {
    final bloc = injector<ContentBloc>();
    return BlocProvider(
      create: (context) => bloc..add(const ContentEvent.init()),
      child: SettingsScreen(
        houseId: houseId,
        house: house,
        serviceList: serviceList,
      ),
    );
  }

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double discountPercent = 10;
  Widget buildCard({
    required String badgeText,
    required String title,
    required String mindesc,
    required String description,
    required String buttonText,
    required bool gradient,
    required VoidCallback onPressed,
    Color buttonColor = const Color.fromARGB(255, 229, 246, 254),
    Gradient? buttonGradient,
    bool showButton = true,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 18),
                Text(
                  mindesc,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 34, 34, 34),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                const Divider(
                  thickness: 0.5,
                  height: 1,
                  color: Color.fromRGBO(220, 220, 220, 1),
                ),
                const SizedBox(height: 6),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 113, 113, 113),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 12),
                if (showButton)
                  Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: buttonGradient,
                      color: buttonGradient == null ? buttonColor : null,
                      borderRadius: BorderRadius.circular(38),
                    ),
                    child: ElevatedButton(
                      onPressed: onPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      child: Text(
                        buttonText,
                        style: TextStyle(
                          color: gradient
                              ? Colors.white
                              : const Color.fromARGB(255, 58, 139, 207),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
              decoration: const BoxDecoration(
                color: Color(0xFFE0F2F1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Text(
                badgeText,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF009688),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  DateTime? getExpireDateByType(String type) {
    try {
      final item = widget.serviceList.firstWhere(
        (element) => (element['type'] ?? '') == type,
        orElse: () => null,
      );
      if (item != null) {
        final expireValue = item['expire'];
        if (expireValue != null && expireValue is String) {
          return DateTime.parse(expireValue);
        }
      }
    } catch (_) {}
    return null;
  }

  String getExpireDurationText(String type) {
    final expireDate = getExpireDateByType(type);
    if (expireDate == null) return '';

    final now = DateTime.now().toUtc();
    final difference = expireDate.difference(now);

    if (difference.isNegative) {
      return 'Wagty doldy';
    }

    final days = difference.inDays;
    final hours = difference.inHours % 24;
    final minutes = difference.inMinutes % 60;

    if (days > 0) {
      return '$days gün $hours sagat $minutes minutdan';
    } else if (hours > 0) {
      return '$hours sagat $minutes minutdan ';
    } else {
      return '$minutes minutdan ';
    }
  }

  Future<void> handleMoveHouse(BuildContext context) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 12),
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
                    color: Color.fromARGB(255, 34, 34, 34)),
              ),
              const SizedBox(height: 10),
              Text(
                context.translation
                    .are_you_sure_you_want_to_move_this_announcement,
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
      ),
    );

    // ignore: use_if_null_to_convert_nulls_to_bools
    if (result == true) {
      try {
        final service = HouseService();
        final houseId = widget.houseId;
        if (houseId != null) {
          await service.moveHouse(houseId);

          await _showSuccessDialog(context, 'Öý üstünlikli öňe süýşürildi');
          Navigator.pop(context);
        }
      } catch (e) {
        var errorMsg = e.toString();
        if (errorMsg.contains('once every')) {
          final expireText = getExpireDurationText('move_free');
          errorMsg =
              // ignore: lines_longer_than_80_chars
              'Bu hyzmaty diňe $expireText gaýtadan ulanyp bilersiňiz ýa-da tölegli hyzmatdan peýdalanyp bilersiňiz!';
        }

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.white,
            behavior: SnackBarBehavior.floating,
            elevation: 8,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: const BorderSide(color: ColorName.blueish, width: 1.2),
            ),
            content: Row(
              children: [
                const Icon(Icons.info_outline, color: ColorName.blueish),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    errorMsg,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF333333),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            duration: const Duration(seconds: 5),
          ),
        );
      }
    }
  }

  void showDiscountBottomSheet(BuildContext context, int houseId, int price) {
    double discountPercent = 10;
    final discountController =
        TextEditingController(text: discountPercent.toStringAsFixed(0));

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            final discountedPrice =
                (price * (1 - discountPercent / 100)).toStringAsFixed(0);

            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
                left: 16,
                right: 16,
                top: 12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(Icons.close, size: 22),
                      ),
                      const Spacer(),
                      Text(
                        context.translation.make_discount,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 34, 34, 34),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Arzanladyşdan soňky baha
                  Text(
                    discountedPrice,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 55, 65, 81),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    context
                        .translation.price, // ýa-da context.translation.price
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 34, 34, 34),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        context.translation.discount,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 34, 34, 34),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: TextFormField(
                          controller: discountController,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.right,
                          decoration: const InputDecoration(
                            suffixText: '%',
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 6),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (text) {
                            final value = int.tryParse(text) ?? 0;
                            if (value >= 0 && value <= 99) {
                              setState(() {
                                discountPercent = value.toDouble();
                              });
                            } else {
                              if (value < 0) {
                                setState(() {
                                  discountPercent = 0;
                                  discountController
                                    ..text = '0'
                                    ..selection = TextSelection.collapsed(
                                        offset: discountController.text.length);
                                });
                              } else if (value > 99) {
                                setState(() {
                                  discountPercent = 99;
                                  discountController
                                    ..text = '99'
                                    ..selection = TextSelection.collapsed(
                                        offset: discountController.text.length);
                                });
                              }
                            }
                          },
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 22),

                  // Slider
                  Row(
                    children: [
                      Expanded(
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            trackHeight: 2.5,
                            thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 12,
                            ),
                            overlayShape: const RoundSliderOverlayShape(
                              overlayRadius: 3,
                            ),
                            inactiveTrackColor:
                                const Color.fromARGB(255, 229, 246, 254),
                            activeTrackColor:
                                const Color.fromARGB(255, 58, 139, 207),
                            thumbColor: const Color.fromARGB(255, 58, 139, 207),
                          ),
                          child: Slider(
                            activeColor: ColorName.blueish,
                            value: discountPercent,
                            max: 99,
                            divisions: 99,
                            label: '${discountPercent.round()}%',
                            onChanged: (value) {
                              setState(() {
                                discountPercent = value;
                                discountController
                                  ..text = '${discountPercent.round()}'
                                  ..selection = TextSelection.collapsed(
                                      offset: discountController.text.length);
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Diapazon ýazgylyklary
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '0%',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 34, 34, 34),
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '99%',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 34, 34, 34),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Tassyklama düwmesi
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (discountPercent == 0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  Text('Arzanladyş göterimi 0% bolup bilmez'),
                            ),
                          );
                          return;
                        }

                        final confirmed = await showDialog<bool>(
                          context: context,
                          builder: (_) => Dialog(
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
                                      color: Color.fromARGB(255, 34, 34, 34),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    context.translation
                                        .are_you_sure_you_want_to_move_this_announcement,
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
                                                255, 155, 38, 18),
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
                                            color: Color.fromARGB(
                                                255, 0, 122, 255),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );

                        if (confirmed != true) return;

                        final loverPrice = discountPercent.round();
                        final service = HouseService();

                        try {
                          await service.discountHouse(houseId, loverPrice);
                          if (!context.mounted) return;
                          Navigator.pop(context);
                          await _showSuccessDialog(
                              context, context.translation.discout_succes);
                          Navigator.pop(context);
                        } catch (e) {
                          Helpers.showToastSuccess(
                              context, context.translation.discout_error);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 16, 100, 188),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        context.translation.verify,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            );
          },
        );
      },
    );
  }

  int getPriceByType(String type) {
    try {
      final item = widget.serviceList.firstWhere(
        (element) => (element['type'] ?? '') == type,
        orElse: () => null,
      );
      if (item != null) {
        return (item['price'] ?? 0) as int;
      }
    } catch (e) {
      // hata varsa 0 döndür
    }
    return 0;
  }

  Future<bool> showPaymentConfirmationDialog(
    BuildContext context,
    String type,
  ) async {
    String getMessage(String type) {
      switch (type) {
        case 'move':
          return context
              .translation.are_you_sure_you_want_to_price_this_announcement;
        case 'luxe':
          return context.translation.are_you_sure_you_want_to_price_this_lux;
        case 'vip':
          return context.translation.are_you_sure_you_want_to_price_this_vip;
        default:
          return context
              .translation.are_you_sure_you_want_to_move_this_announcement;
      }
    }

    final result = await showDialog<bool>(
      context: context,
      builder: (context) => Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 12),
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
                  color: Color.fromARGB(255, 34, 34, 34),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                getMessage(type),
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
      ),
    );

    // ignore: use_if_null_to_convert_nulls_to_bools
    return result == true;
  }

  int getCuponCountByType(String type) {
    try {
      final item = widget.serviceList.firstWhere(
        (element) => (element['type'] ?? '') == type,
        orElse: () => null,
      );
      if (item != null) {
        return (item['cupon_count'] ?? 0) as int;
      }
    } catch (e) {
      // hata varsa 0 döndür
    }
    return 0;
  }

  Future<void> showVipCouponDialog(BuildContext context, String type) async {
    if (type == 'luxe' && (widget.house.vipStatus ?? false)) {
      await _showSuccessDialog(
        context,
        context.translation.vipalert,
      );
      return;
    }
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 12),
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
                    color: Color.fromARGB(255, 34, 34, 34)),
              ),
              const SizedBox(height: 10),
              Text(
                // ignore: lines_longer_than_80_chars
                type == 'vip'
                    ? context
                        .translation.are_you_sure_you_want_to_price_this_vip
                    : context
                        .translation.are_you_sure_you_want_to_price_this_lux,
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
      ),
    );

    // ignore: use_if_null_to_convert_nulls_to_bools
    if (confirmed == true) {
      await handleServiceAction(type);
    }
  }

  Future<void> handleServiceAction(String type) async {
    final cuponCount = getCuponCountByType(type);
    final houseService = HouseService();
    final houseId = widget.houseId;

    if (houseId == null) return;

    if (cuponCount > 0) {
      try {
        late final dynamic response;
        if (type == 'luxe') {
          response = await houseService.makeLuxe(houseId);
        } else if (type == 'vip') {
          response = await houseService.makeVip(houseId);
        }

        final responseData = response.data as Map<String, dynamic>;
        final success = responseData['success'] as bool?;
        final message = responseData['message'] as String?;

        // ignore: use_if_null_to_convert_nulls_to_bools
        if (success == true) {
          if (type == 'luxe') {
            await _showSuccessDialog(
              context,
              context.translation.luxestatus,
            );
            Navigator.pop(context);
          } else if (type == 'vip') {
            await _showSuccessDialog(
              context,
              context.translation.vipestatus,
            );
            Navigator.pop(context);
          }
        } else {
          Helpers.showToastError(context, message ?? 'Ýalňyşlyk ýüze çykdy');
        }
      } catch (e) {
        print('Error making service request: $e');
        Helpers.showToastError(
          context,
          'Hyzmat ýerine ýetirilende ýalňyşlyk ýüze çykdy',
        );
      }
    } else {
      final confirmed = await showPaymentConfirmationDialog(context, type);
      if (!confirmed) return;

      try {
        final response = await houseService.fetchBankList();
        final rawData = response.data;

        if (rawData != null && rawData is Map && rawData['data'] is List) {
          final bankList = rawData['data'] as List<dynamic>;

          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PaymentCardScreen(
                bankList: bankList,
                house: widget.house,
                type: 'house_$type',
              ),
            ),
          );
        }
      } catch (e) {
        print('Bank listesi alınırken hata: $e');
      }
    }
  }

  Future<void> _showSuccessDialog(BuildContext context, String message) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 12),
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
                    color: Color.fromARGB(255, 34, 34, 34),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  message,
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
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        context.translation.bolyar,
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
  }

  @override
  Widget build(BuildContext context) {
    print('widget.house.status: ${widget.house.status}');
    final luxeCuponCount = getCuponCountByType('luxe');
    final vipCuponCount = getCuponCountByType('vip');

    // print('Luxe Kupon: $luxeCuponCount');
    // print('VIP Kupon: $vipCuponCount');

    final luxeTitle = luxeCuponCount > 0
        ? 'GALAN LUXE $luxeCuponCount'
        : '${getPriceByType('luxe')} MANAT';
    final vipTitle = vipCuponCount > 0
        ? 'GALAN VIP $vipCuponCount'
        : '${getPriceByType('vip')} MANAT';

    return Scaffold(
      backgroundColor: const Color(0xFFF0F4F8),
      appBar: AppBar(
        backgroundColor: ColorName.main,
        title: Text(
          context.translation.edit1,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
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
      ),
      body: ListView(
        children: [
          BlocConsumer<ContentBloc, ContentState>(
            listener: (context, state) {
              // Gerekli durumlar için
            },
            builder: (context, state) {
              final options = state.globalOptions;
              print('globalOptions: $options');
              print('globalOptions.payment: ${options?.payment}');

              return Column(
                children: [
                  buildCard(
                    title: context.translation.free,
                    mindesc: context.translation.correction,
                    description: context.translation.correction_description,
                    buttonText: context.translation.correction,
                    gradient: false,
                    onPressed: () async {
                      if (options == null) {
                        print('Options is null, navigation canceled.');
                        return;
                      }

                      final isUpdated = await Navigator.push<bool?>(
                        context,
                        CustomPageRoute.slide(
                          AddHouseViewUpdate.builder(
                            context,
                            options: options,
                            house: widget.house,
                          ),
                        ),
                      );

                      // ignore: use_if_null_to_convert_nulls_to_bools
                      if (isUpdated == true && context.mounted) {
                        context
                            .read<ContentBloc>()
                            .add(const ContentEvent.init());
                      }
                    },
                    badgeText: context.translation.free,
                  ),
                  if (widget.house.status == 'active') ...[
                    buildCard(
                      title: context.translation.free,
                      mindesc: context.translation.make_discount,
                      description:
                          context.translation.make_discount_description,
                      buttonText: context.translation.make_discount,
                      gradient: false,
                      onPressed: () {
                        final price = double.tryParse(widget.house.price ?? '');
                        if (price == null) {
                          return;
                        }
                        showDiscountBottomSheet(
                          context,
                          widget.houseId!,
                          price.round(),
                        );
                      },
                      badgeText: context.translation.free,
                    ),
                    buildCard(
                      title: context.translation.free,
                      mindesc: context.translation.moving_forward,
                      description:
                          context.translation.moving_forward_description,
                      buttonText: context.translation.moving_forward,
                      gradient: false,
                      onPressed: () => handleMoveHouse(context),
                      badgeText: context.translation.free,
                    ),
                    buildCard(
                      title: luxeTitle,
                      mindesc: context.translation.make_luxe1,
                      description: context.translation.make_luxe_description,
                      buttonText: context.translation.make_luxe,
                      onPressed: () => showVipCouponDialog(context, 'luxe'),
                      gradient: true,
                      buttonGradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 175, 40, 150),
                          Color.fromARGB(255, 80, 155, 245),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      badgeText: luxeTitle,
                    ),
                    buildCard(
                      title: vipTitle,
                      mindesc: context.translation.make_vip1,
                      description: context.translation.make_vip_description,
                      buttonText: context.translation.make_vip,
                      onPressed: () => showVipCouponDialog(context, 'vip'),
                      gradient: true,
                      buttonGradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 175, 40, 150),
                          Color.fromARGB(255, 80, 155, 245)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      badgeText: vipTitle,
                    ),
                    buildCard(
                      title: '${getPriceByType('move')} MANAT',
                      mindesc: context.translation.lift_notification,
                      description:
                          context.translation.lift_notification_discription,
                      buttonText: context.translation.make_lift,
                      gradient: true,
                      onPressed: () async {
                        final confirmed = await showPaymentConfirmationDialog(
                            context, 'move');
                        if (!confirmed) return;

                        final houseService = HouseService();
                        try {
                          final response = await houseService.fetchBankList();
                          final rawData = response.data;

                          if (rawData != null &&
                              rawData is Map &&
                              rawData['data'] is List) {
                            final bankList = rawData['data'] as List<dynamic>;

                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaymentCardScreen(
                                  bankList: bankList,
                                  house: widget.house,
                                  type: 'house_move',
                                ),
                              ),
                            );
                          }
                          // ignore: empty_catches
                        } catch (e) {}
                      },
                      buttonGradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 175, 40, 150),
                          Color.fromARGB(255, 80, 155, 245),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      badgeText: '${getPriceByType('move')} MANAT',
                      showButton: options?.payment ?? true,
                    ),
                  ],
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
