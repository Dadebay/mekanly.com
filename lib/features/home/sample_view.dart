// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:gen/gen.dart';
// import 'package:go_router/go_router.dart';

// import '../../core/components/app_text.dart';
// import '../../utils/extensions.dart';
// import '../../utils/toast.dart';

// class BaseView extends StatelessWidget {
//   BaseView({super.key});

//   static const routePath = '/base-view';
//   static const routeName = 'base-view';

//   static Widget builder(BuildContext context, GoRouterState state) {
//     return BaseView();
//   }

//   String? value;
//   int? index;

//   void showToast(
//     BuildContext ctx,
//     // String txt,
//   ) {
//     // ToastUtil.show(
//     //   ToastUtil.infoDecorator(title: 'empty'),
//     //   ctx,
//     //   gravity: ToastGravity.bottom,
//     // );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const TransitionAppBarPage();
//     // Scaffold(
//     //   body: CustomScrollView(
//     //     slivers: <Widget>[
//     //       const TransitionAppBar(
//     //         // extent: 250,
//     //         extent: 332,
//     //         avatar: CircleAvatar(
//     //           radius: 28,
//     //           backgroundImage: NetworkImage(
//     //             'https://s3-alpha-sig.figma.com/img/2080/656f/885ab6b25e63fc41e48797f6cc9d2fef?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=U~pet~9xJQhlrVNMqj4oMxwy0aX8hTivCHSTetP-PmBXOjkR2JP4VIEsnmIamlshImmmFFLqNL50CKY3kiL4CWQfMp6muYMfEhqu4ePYpJr05UOdSpZwKWp0zFxoSgR7Y-sX81l9x2pWwvn7Tj2z1P2omSefZo76firtM5fRjcut4-kBLGdTkT6HiZS8--2D2njMaYbxWy3JltycJEElWSOVA1z8B6ve4mIjwwkabacLGQILSbd~TM2ZIhzp3Y1Syl7Np-MFbW2COploLuscogHSMLsOg79ZZ2Ni5qFcgMkLAsHBDbMruQW-FeJDNJR37MRtDlpkzOKyYIXUx7FjMA__',
//     //           ),
//     //         ),
//     //         title: 'Emmanuel Olu-Flourish',
//     //       ),
//     //       SliverList(
//     //         delegate: SliverChildBuilderDelegate(
//     //           (context, index) {
//     //             return Container(
//     //               child: ListTile(
//     //                 title: Text('${index}a'),
//     //               ),
//     //             );
//     //           },
//     //           childCount: 25,
//     //         ),
//     //       ),
//     //     ],
//     //   ),
//     // );
//   }
// }

// class TransitionAppBarPage extends StatelessWidget {
//   const TransitionAppBarPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           const TransitionAppBar(),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (context, index) => ListTile(
//                 title: Text('Item $index'),
//               ),
//               childCount: 20,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class TransitionAppBar extends StatelessWidget {
//   const TransitionAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SliverPersistentHeader(
//       pinned: true,
//       floating: true,
//       delegate: _TransitionAppBarDelegate(),
//     );
//   }
// }

// class _TransitionAppBarDelegate extends SliverPersistentHeaderDelegate {
//   @override
//   double get minExtent => kToolbarHeight;

//   @override
//   double get maxExtent => 200;

//   @override
//   Widget build(
//     BuildContext context,
//     double shrinkOffset,
//     bool overlapsContent,
//   ) {
//     final progress = shrinkOffset / maxExtent;

//     return Stack(
//       fit: StackFit.expand,
//       children: [
//         // Background Image
//         Opacity(
//           opacity: 1.0 - progress,
//           child: Image.network(
//             'https://s3-alpha-sig.figma.com/img/2439/53c9/860456f3795b6558bf629a2c18c5db93?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=DqnLA6poMFA0MYhrH4wxs9nA6I8JdpBbte3aRSbZ5p35Zd56a3TCbsJX1-32VSf5DeisWmQY3xckdUc80iEzPDmwkIEbmfo~Pqrh-ozY~XhCre~-eZ65t7u5GZuZTnsWu7jLDfmLuK59E71G0lv~Vo-iLYdQKugE9wIlUQSSfuqM-7sUoe~oOL1lJG2f~KCBO4HG~pOLgdOFih9~Dx1zBLKskUv17NbfFenOseqjFJgn~pHwrzmeESGn54Ks3JKfQli-rDpeDvVso6829KN8TvWOzLL04qD2k91pbJqQsM7KrxZ9XTw~uf9GWU5ywDxc4VAj5f1Ycl51likJIPKvDA__', // Replace with actual background image
//             fit: BoxFit.cover,
//           ),
//         ),

//         // Gradient Overlay
//         Opacity(
//           opacity: 1.0 - progress,
//           child: Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [
//                   Colors.black.withOpacity(0.3),
//                   Colors.transparent,
//                 ],
//               ),
//             ),
//           ),
//         ),

//         // App Bar Content
//         Positioned(
//           top: 0,
//           left: 0,
//           right: 0,
//           child: AppBar(
//             backgroundColor: Colors.transparent,
//             elevation: 0,
//             leading: IconButton(
//               icon: const Icon(Icons.arrow_back, color: Colors.white),
//               onPressed: () => Navigator.of(context).pop(),
//             ),
//             title: Opacity(
//               opacity: progress,
//               child: const Text(
//                 'Rowaq Mebel',
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//             actions: [
//               IconButton(
//                 icon: const Icon(Icons.share, color: Colors.white),
//                 onPressed: () {
//                   // Share functionality
//                 },
//               ),
//             ],
//           ),
//         ),

//         // Logo and Title
//         Positioned(
//           top: 40 - (40 * progress),
//           left: 16,
//           child: Opacity(
//             opacity: 1.0 - progress,
//             child: Row(
//               children: [
//                 // Rowaq Mebel Logo
//                 Container(
//                   width: 50 * (1 - progress),
//                   height: 50 * (1 - progress),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.black,
//                     border: Border.all(color: Colors.white, width: 2),
//                   ),
//                   child: const Center(
//                     child: Text(
//                       'RM',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 Text(
//                   'Rowaq Mebel',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20 * (1 - progress),
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   @override
//   bool shouldRebuild(covariant _TransitionAppBarDelegate oldDelegate) => false;
// }
