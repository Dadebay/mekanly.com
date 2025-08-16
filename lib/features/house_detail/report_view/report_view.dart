// import 'package:flutter/material.dart';

// class ReportPage extends StatelessWidget {
//   const ReportPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 12),
//         child: Row(
//           children: [
//             const Icon(Icons.report, color: Colors.grey),
//             const SizedBox(width: 8),
//             GestureDetector(
//               onTap: () {
//                 _showReportBottomSheet(context);
//               },
//               child: const Text(
//                 'Report',
//                 style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                   color: Color(0xFF6A6A6A),
//                   decoration: TextDecoration.underline,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }



//   void _showConfirmationDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext ctx) {
//         return AlertDialog(
//           title: const Text("Habarname"),
//           content:
//               const Text("Kabul edildi, biz bu bildirşi gözden geçireris."),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(ctx),
//               child: const Text("OK"),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
