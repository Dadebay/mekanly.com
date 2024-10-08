// ignore_for_file: file_names
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

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
  }
}
