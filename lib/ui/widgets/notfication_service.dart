// ignore_for_file: file_names
import 'dart:convert';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FCMConfig {
  Future initAwesomeNotification() async {
    await AwesomeNotifications()
        .initialize(
          null,
          [
            NotificationChannel(
              channelGroupKey: 'basic_channel_group',
              channelKey: 'basic_channel',
              channelName: 'Basic notifications',
              channelDescription: 'Notification channel for basic tests',
              defaultColor: const Color(0xFF9D50DD),
              ledColor: Colors.white,
              importance: NotificationImportance.Max,
              channelShowBadge: true,
              locked: true,
              defaultRingtoneType: DefaultRingtoneType.Ringtone,
            ),
          ],
          channelGroups: [
            NotificationChannelGroup(
              channelGroupKey: 'basic_channel_group',
              channelGroupName: 'Basic group',
            ),
          ],
          debug: false,
        )
        .then((a) {});
    FirebaseMessaging.instance.subscribeToTopic('ttf_channel').then((a) {
      return a;
    });
  }

  Future<void> requestPermission() async {
    await AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
  }

  int a = 0;
  Future sendNotification({required String title, required String body}) async {
    a++;
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: a,
        channelKey: 'basic_channel',
        title: title,
        body: body,
        notificationLayout: NotificationLayout.BigText,
        wakeUpScreen: true,
      ),
    );
    NotificationItem item = NotificationItem(date: DateTime.now().toString(), title: title, subtitle: body);
    await NotificationServiceSAVEDATA.saveNotification(item);
  }
}

class NotificationItem {
  String date;
  String title;
  String subtitle;

  NotificationItem({required this.date, required this.title, required this.subtitle});

  Map<String, dynamic> toJson() => {
        'date': date,
        'title': title,
        'subtitle': subtitle,
      };

  factory NotificationItem.fromJson(Map<String, dynamic> json) {
    return NotificationItem(
      date: json['date'],
      title: json['title'],
      subtitle: json['subtitle'],
    );
  }
}

class NotificationServiceSAVEDATA {
  static Future<void> saveNotification(NotificationItem notification) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> notifications = prefs.getStringList('notifications') ?? [];
    notifications.add(jsonEncode(notification.toJson()));
    await prefs.setStringList('notifications', notifications);
  }

  static Future<List<NotificationItem>> getNotifications() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> notifications = prefs.getStringList('notifications') ?? [];
    return notifications.map((item) => NotificationItem.fromJson(jsonDecode(item))).toList();
  }
}
