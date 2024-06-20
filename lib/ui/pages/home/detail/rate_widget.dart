import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mekanly_com/logic/cubits/comments/comments_cubit.dart';
import 'package:mekanly_com/ui/pages/comment_terms_page.dart';
import 'package:mekanly_com/ui/pages/profile/auth/login_page.dart';

import '../../../../logic/cubits/auth/auth_cubit.dart';
import '../../../style/style.dart';
import '../../profile/auth/logout_dialog.dart';
import '/config/config.dart';
import '/localization/locals.dart';
import '/ui/style/app_sizes.dart';

class RateWidget extends StatefulWidget {
  const RateWidget({
    super.key,
    required this.rateCount,
    required this.userName,
    required this.houseId,
  });
  final int rateCount;
  final String userName;
  final int houseId;

  @override
  RateWidgetState createState() => RateWidgetState();
}

class RateWidgetState extends State<RateWidget> {
  final TextEditingController descrCtrl = TextEditingController();
  double rating = 0;
  bool acceptedTerms = false;

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);
    var cmCubit = context.read<CommentsCubit>();
    var isLogedin = context.read<AuthCubit>().state is AuthSuccess;

    return Container(
      color: AppColors.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppSizes.pix12),
                    child: Tex(
                      '${locals.comments} (${widget.rateCount})',
                      con: context,
                      col: AppColors.mainText,
                      size: AppSizes.pix16,
                    ).title),
              ),
              IconButton(
                icon: const SvgAsset('comment', AppColors.mainText),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext ctx) {
                      if (!isLogedin) {
                        return AlertDialog(
                          insetPadding: const EdgeInsets.all(20),
                          actionsPadding: const EdgeInsets.all(AppSizes.pix10),
                          actionsAlignment: MainAxisAlignment.center,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSizes.pix10),
                          ),
                          title: Tex(
                            locals.habarnama,
                            con: context,
                          ),
                          content: Tex(
                            locals.loginToComment,
                            con: context,
                          ),
                          actions: [
                            DialogActions(
                              applyText: locals.login,
                              locals: locals,
                              onDeny: () => Navigator.of(context).pop(false),
                              onSubmit: () {
                                go(context, const LoginPage());
                              },
                            ),
                          ],
                        );
                      } else {
                        return Dialog(
                          clipBehavior: Clip.none,
                          shape: RoundedRectangleBorder(borderRadius: borderAll10),
                          insetPadding: const EdgeInsets.all(AppSizes.pix10),
                          backgroundColor: AppColors.primary,
                          child: Padding(
                            padding: const EdgeInsets.all(AppSizes.pix12),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Tex(
                                  widget.userName,
                                  con: context,
                                ).white,
                                if (context.watch<AuthCubit>().state is AuthSuccess)
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: AppSizes.pix8),
                                    child: Row(
                                      children: [
                                        Tex(
                                          '${locals.rate}:   ',
                                          con: context,
                                        ).white,
                                        RatingBar.builder(
                                          initialRating: rating,
                                          unratedColor: AppColors.mainText,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: AppSizes.pix16,
                                          itemBuilder: (context, _) => const Icon(Icons.star, color: AppColors.yellow),
                                          onRatingUpdate: (value) {
                                            setState(() {
                                              rating = value;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                    AppSizes.pix8,
                                    AppSizes.pix8,
                                    AppSizes.pix8,
                                    MediaQuery.of(context).viewInsets.bottom + AppSizes.pix8,
                                  ),
                                  child: TextFormField(
                                    inputFormatters: [LengthLimitingTextInputFormatter(220)],
                                    controller: descrCtrl,
                                    decoration: InputDecoration(
                                      hintText: locals.writeComment,
                                      filled: true,
                                      fillColor: Colors.white.withOpacity(.3),
                                      hintStyle: const TextStyle(color: AppColors.secondaryTextDark),
                                      border: InputBorder.none,
                                    ),
                                    style: const TextStyle(color: AppColors.black),
                                    maxLines: 5,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const SizedBox(width: AppSizes.pix10),
                                    StatefulBuilder(builder: (cx, setSt) {
                                      return InkWell(
                                        onTap: () {
                                          setSt(() {
                                            acceptedTerms = !acceptedTerms;
                                          });
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Icon(
                                            acceptedTerms ? Icons.check_box_outlined : Icons.check_box_outline_blank_outlined,
                                            color: AppColors.mainText,
                                          ),
                                        ),
                                      );
                                    }),
                                    InkWell(
                                      onTap: () => go(ctx, const CommentTermsPage()),
                                      child: Tex(
                                        locals.acceptTerms,
                                        con: ctx,
                                        size: 14,
                                        col: AppColors.mainText,
                                        padding: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(ctx);
                                      },
                                      child: Tex(
                                        locals.deny.toUpperCase(),
                                        con: context,
                                        col: Colors.red,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    TextButton(
                                      onPressed: () async {
                                        if (rating > 0 && descrCtrl.text.isNotEmpty && acceptedTerms) {
                                          await cmCubit.comment(widget.houseId, rating, descrCtrl.text).whenComplete(() async {
                                            descrCtrl.clear();
                                            acceptedTerms = false;
                                            rating = 0;
                                            successToast(locals.commentSaved);

                                            await cmCubit.getHouseComments(widget.houseId);
                                          }).then((value) => Navigator.of(ctx).pop());
                                        } else {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(title: Tex(locals.habarnama, con: context), content: Tex(locals.makeSure, con: context), actions: [
                                                TextButton(
                                                    child: Tex('OK', con: context),
                                                    onPressed: () {
                                                      Navigator.of(context).pop();
                                                    })
                                              ]);
                                            },
                                          );
                                        }
                                      },
                                      child: Tex(
                                        locals.accept.toUpperCase(),
                                        con: context,
                                        col: AppColors.mainText,
                                      ),
                                    ),
                                    const SizedBox(width: 13)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
