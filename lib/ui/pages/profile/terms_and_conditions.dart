import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../style/style.dart';
import '../../widgets/top_bar.dart';
import '/localization/locals.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: TopBar(title: locals.terms),
      body: FutureBuilder(
        future: rootBundle.loadString('assets/legals.txt'),
        builder: (context, snapshot) {
          if (snapshot.data != null && snapshot.hasData) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Tex(
                  snapshot.data!,
                  con: context,
                  size: 18,
                ).title1,
              ),
            );
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error loading data'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
