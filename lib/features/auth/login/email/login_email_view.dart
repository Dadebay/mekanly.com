// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:gen/gen.dart';
// import 'package:go_router/go_router.dart';

// import '../../../../core/components/app_btn.dart';
// import '../../../../core/components/app_text.dart';
// import '../../../../core/components/check_box/titled_check_box.dart';
// import '../../../../core/components/divider_center_titled.dart';
// import '../../../../core/components/inputs/email_field.dart';
// import '../../../../utils/extensions.dart';
// import '../phone_number/login_phone_number_view.dart';
// import '../widgets/base_login_view.dart';

// class LoginEmailView extends StatelessWidget {
//   LoginEmailView({super.key});

//   static const routePath = '/login-email-view';
//   static const routeName = 'login-email-view';

//   static Widget builder(BuildContext context, GoRouterState state) {
//     return LoginEmailView();
//   }

//   final TextEditingController _emailController = TextEditingController();
//   final GlobalKey<FormState> _key = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return BaseLoginView(
//       appBarTitle: 'Ulgama girmek',
//       content: SingleChildScrollView(
//         child: Form(
//           key: _key,
//           child: Column(
//             children: [
//               60.boxH,
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 46).w,
//                 child: Assets.icons.icLogo.image(package: 'gen'),
//               ),
//               30.boxH,
//               EmailFiled(
//                 onTapOutside: () {
//                   FocusScope.of(context).unfocus();
//                 },
//                 controller: _emailController,
//               ),
//               20.boxH,
//               TitledCheckBox(
//                 onTitleTap: () {},
//                 onSelect: (v) {},
//                 isSelected: false,
//                 title: 'Düzgünnamany okadym we kabul etdim',
//               ),
//               27.boxH,
//               Row(
//                 children: [
//                   Expanded(
//                     child: GradientBtn(
//                       onTap: () {
//                         if (!(_key.currentState?.validate() ?? false)) {
//                           return;
//                         }
//                       },
//                       text: 'TASSYKLAMAK',
//                       txtColor: ColorName.white,
//                     ),
//                   ),
//                 ],
//               ),
//               40.boxH,
//               const DividerCenterTitled(
//                 title: 'ÝA-DA',
//               ),
//               26.boxH,
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   OutlinedGradientBtn(
//                     child: AppText.s12w400BdS(
//                       'TELEFON NOMER',
//                       fontWeight: FontWeight.w500,
//                       color: const Color(0xff384CFF),
//                     ),
//                     onTap: () {
//                       context.pushReplacement(LoginPhoneNumberView.routePath);
//                     },
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
