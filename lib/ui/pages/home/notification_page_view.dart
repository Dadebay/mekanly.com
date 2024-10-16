import 'package:flutter/material.dart';
import 'package:mekanly_com/config/const.dart';
import 'package:mekanly_com/config/easy_tools.dart';
import 'package:mekanly_com/localization/locals.dart';
import 'package:mekanly_com/ui/widgets/notfication_service.dart';
import 'package:mekanly_com/ui/widgets/widgets.dart';

import '../../style/text_styles.dart';

class NotifcationPageView extends StatefulWidget {
  const NotifcationPageView({super.key});

  @override
  State<NotifcationPageView> createState() => _NotifcationPageViewState();
}

class _NotifcationPageViewState extends State<NotifcationPageView> {
  late Future<List<NotificationItem>> notificationList;

  @override
  void initState() {
    super.initState();
    notificationList = NotificationServiceSAVEDATA.getNotifications();
  }

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: TopBar(title: locals.habarnama),
      body: FutureBuilder<List<NotificationItem>>(
        future: notificationList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No notifications'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final item = snapshot.data![index];

                String toTime() {
                  DateTime dateTime = DateTime.parse(item.date);
                  String day = dateTime.day.toString().padLeft(2, '0');
                  String month = dateTime.month.toString().padLeft(2, '0');
                  String year = dateTime.year.toString();
                  return "$day.$month.$year ý";
                }

                return Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [BoxShadow(color: Colors.grey.shade200, spreadRadius: 3, blurRadius: 3)],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SvgAsset('calendar', Colors.grey),
                          const SizedBox(width: 10),
                          Tex(toTime(), col: Colors.grey, con: context).subtitle,
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          item.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.black, fontFamily: robotoSemiBold, fontSize: 15),
                        ),
                      ),
                      Tex(item.subtitle, col: Colors.grey, con: context).subtitle,
                      const SizedBox(height: 10),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
