import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mekanly_com/ui/style/colors.dart';
import 'package:mekanly_com/ui/widgets/top_bar.dart';

import '../../localization/locals.dart';
import '../style/text_styles.dart';

class CommentTermsPage extends StatelessWidget {
  const CommentTermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: TopBar(title: locals.commentTerms),
      body: FutureBuilder(
        future: rootBundle.loadString('assets/comment.txt'),
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
