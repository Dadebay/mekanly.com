// ignore_for_file: avoid_dynamic_calls

import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

import '../../../localization/extensions.dart';
import '../../../remote/entities/house_detail/house_detail_response.dart';
import '../../../remote/repositories/add_house/house_crud.dart';
import '../../../utils/api_provider.dart';
import 'payment_webview.dart';

class PaymentCardScreen extends StatelessWidget {
  const PaymentCardScreen({
    super.key,
    required this.bankList,
    required this.house,
    required this.type,
  });
  final List<dynamic> bankList;
  final HouseData house;
  final String type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4D8BBF),
        title: Text(
          context.translation.bank_kart_sayla,
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
      body: ListView.builder(
        padding:
            const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
        itemCount: bankList.length,
        itemBuilder: (context, index) {
          final bank = bankList[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: GestureDetector(
              onTap: () async {
                try {
                  final houseType = house.type;
                  final typehuse = (houseType == 'house') ? 'House' : 'Product';

                  final response = await HouseService().fetchPaymentInfo(
                    param: house.id?.toString() ?? '',
                    model: typehuse,
                    type: type,
                    bankId: bank['id'].toString(),
                  );

                  final data = response.data['data'];
                  if (data != null && data['formUrl'] != null) {
                    final formUrl = data['formUrl']?.toString() ?? '';
                    final orderId = data['orderId']?.toString() ?? '';
                    final bankId = bank['id'].toString();

                    await Navigator.push(
                      // ignore: use_build_context_synchronously
                      context,
                      // ignore: inference_failure_on_instance_creation
                      MaterialPageRoute(
                        builder: (context) =>
                            // ignore: lines_longer_than_80_chars
                            PaymentWebViewScreen(
                          url: formUrl,
                          orderId: orderId,
                          bankId: bankId,
                        ),
                      ),
                    );
                  }
                  // ignore: empty_catches
                } catch (e) {}
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Image.network(
                  ApiProvider().baseUrl + (bank['image']?.toString() ?? ''),
                  width: double.infinity,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 180,
                      color: Colors.grey[300],
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
