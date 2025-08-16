import 'dart:async';
import 'dart:developer';
import 'package:common/common.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../firebase_messaging_service.dart';
import '../../firebase_options.dart';
import '../../local_notifications_service.dart';
import '../../utils/api_provider.dart';
import '../../utils/constants.dart';
import '../../utils/helpers.dart';
import '../local/config_preference.dart';


@immutable
final class ApplicationInitialize {
  Future<void> initialize() async {
    // WidgetsFlutterBinding.ensureInitialized() zaten main.dart'ta olduğu için burada gerek yok.

    try {
      if (Firebase.apps.isEmpty) {
        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );
        log('[MAIN LOG] Firebase başarıyla başlatıldı.', name: 'AkbulutApp');
      } else {
        log('[MAIN LOG] Firebase zaten başlatılmıştı.', name: 'AkbulutApp');
      }
    } on FirebaseException catch (e) {
      // Eğer hata "duplicate-app" ise, bu bizim için sorun değil.
      // Zaten başlatılmış demektir. Diğer Firebase hatalarını yine de görelim.
      if (e.code == 'duplicate-app') {
        log('[MAIN LOG] Firebase zaten başlatılmıştı (Hata yakalandı).', name: 'AkbulutApp');
      } else {
        log('[MAIN LOG] Beklenmedik bir Firebase hatası: ${e.code}', name: 'AkbulutApp');
        // İsterseniz burada hatayı yeniden fırlatabilirsiniz: rethrow;
      }
    }
    final pref = await SharedPreferences.getInstance();
    ConfigPreference.init(pref);

    
    // --- Buradan sonraki kodlarınız aynı kalabilir ---
    await ApiProvider().initialize();

    final localNotificationsService = LocalNotificationsService.instance();
    await localNotificationsService.init();

    final firebaseMessagingService = FirebaseMessagingService.instance();
    await firebaseMessagingService.init(localNotificationsService: localNotificationsService);

    await HelpersCopy.loadImage(const AssetImage(AppConstants.businessProfileImg));

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
      ),
    );
    await SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ],
    );

    // await DependencyManager.inject();
    // final pref = await SharedPreferences.getInstance();
    // ConfigPreference.init(pref);
  }
}
