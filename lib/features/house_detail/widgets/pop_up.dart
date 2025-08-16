// ignore_for_file: inference_failure_on_function_invocation

import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

import '../../../product/constants/constants.dart';

class ClickableBanner extends StatelessWidget {
  const ClickableBanner({super.key});

  void _showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 24,
            bottom: 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.icons.fire.svg(
                    package: 'gen',
                    // ignore: deprecated_member_use
                    color: const Color.fromARGB(255, 55, 65, 81),
                  ),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      'Diňe mekanly.com-da',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: StringConstants.roboto,
                        color: Color.fromARGB(255, 55, 65, 81),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                // ignore: lines_longer_than_80_chars
                'Satyjy bu bildirşi diňe mekanly.com-da goýandygyny tassyklady.',
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: StringConstants.roboto,
                  color: Color.fromARGB(255, 55, 65, 81),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 77, 139, 191),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showCustomBottomSheet(context),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 249, 229),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Assets.icons.fire.svg(
                  package: 'gen',
                ),
                const SizedBox(width: 8),
                const Text(
                  'Diňe mekanly.com-da',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: StringConstants.roboto,
                    color: Color.fromARGB(255, 243, 191, 1),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
            const Icon(Icons.info,
                color: Color.fromARGB(255, 243, 191, 1), size: 20,),
          ],
        ),
      ),
    );
  }
}
