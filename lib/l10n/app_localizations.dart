import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ru.dart';
import 'app_localizations_tk.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ru'),
    Locale('tk')
  ];

  /// No description provided for @title.
  ///
  /// In ru, this message translates to:
  /// **'Mekanly.com'**
  String get title;

  /// No description provided for @home.
  ///
  /// In ru, this message translates to:
  /// **'Главная страница'**
  String get home;

  /// No description provided for @searchMain.
  ///
  /// In ru, this message translates to:
  /// **'Недвижимость'**
  String get searchMain;

  /// No description provided for @businessProfile.
  ///
  /// In ru, this message translates to:
  /// **'Бизнес-профиль'**
  String get businessProfile;

  /// No description provided for @favorites.
  ///
  /// In ru, this message translates to:
  /// **'Избранное'**
  String get favorites;

  /// No description provided for @menu.
  ///
  /// In ru, this message translates to:
  /// **'Меню'**
  String get menu;

  /// No description provided for @esasysurat.
  ///
  /// In ru, this message translates to:
  /// **'Основное фото'**
  String get esasysurat;

  /// No description provided for @suratgos.
  ///
  /// In ru, this message translates to:
  /// **'Добавить фото'**
  String get suratgos;

  /// No description provided for @suratgosuldy.
  ///
  /// In ru, this message translates to:
  /// **'Фото добавлено'**
  String get suratgosuldy;

  /// No description provided for @no_internet.
  ///
  /// In ru, this message translates to:
  /// **'Нет интернета'**
  String get no_internet;

  /// No description provided for @check_your_internet.
  ///
  /// In ru, this message translates to:
  /// **'Нет подключения к интернету, проверьте интернет и попробуйте снова.'**
  String get check_your_internet;

  /// No description provided for @cancel.
  ///
  /// In ru, this message translates to:
  /// **'Отмена'**
  String get cancel;

  /// No description provided for @try_again.
  ///
  /// In ru, this message translates to:
  /// **'Попробовать снова'**
  String get try_again;

  /// No description provided for @nag_iber.
  ///
  /// In ru, this message translates to:
  /// **'Отправить жалобу'**
  String get nag_iber;

  /// No description provided for @kabul_iber.
  ///
  /// In ru, this message translates to:
  /// **'Принято, мы рассмотрим это сообщение'**
  String get kabul_iber;

  /// No description provided for @ugrat.
  ///
  /// In ru, this message translates to:
  /// **'Отправить'**
  String get ugrat;

  /// No description provided for @log_in.
  ///
  /// In ru, this message translates to:
  /// **'Войти в систему'**
  String get log_in;

  /// No description provided for @enter_your_phone_number.
  ///
  /// In ru, this message translates to:
  /// **'Введите номер телефона для входа в систему'**
  String get enter_your_phone_number;

  /// No description provided for @read_and_accepted_terms.
  ///
  /// In ru, this message translates to:
  /// **'Я прочитал и принимаю правила'**
  String get read_and_accepted_terms;

  /// No description provided for @verification.
  ///
  /// In ru, this message translates to:
  /// **'Подтверждение'**
  String get verification;

  /// No description provided for @enter_code.
  ///
  /// In ru, this message translates to:
  /// **'Введите пароль, отправленный на ваш номер телефона'**
  String get enter_code;

  /// No description provided for @enter_activation_code.
  ///
  /// In ru, this message translates to:
  /// **'Введите код активации'**
  String get enter_activation_code;

  /// No description provided for @verify.
  ///
  /// In ru, this message translates to:
  /// **'Подтвердить'**
  String get verify;

  /// No description provided for @homepage.
  ///
  /// In ru, this message translates to:
  /// **'Главная страница'**
  String get homepage;

  /// No description provided for @mekanly_info_part1.
  ///
  /// In ru, this message translates to:
  /// **'Эта функция означает, что вы размещаете своё жильё '**
  String get mekanly_info_part1;

  /// No description provided for @mekanly_info_part2.
  ///
  /// In ru, this message translates to:
  /// **'эксклюзивно на Mekanly.com. '**
  String get mekanly_info_part2;

  /// No description provided for @mekanly_info_part3.
  ///
  /// In ru, this message translates to:
  /// **'Используя эту функцию, ваше объявление будет автоматически продвигаться каждые 3 дня. Если будет добавлено новое объявление, ваше опустится ниже. В случае поступления жалобы на размещение вашего объявления на других платформах, данная функция будет автоматически отключена.'**
  String get mekanly_info_part3;

  /// No description provided for @real_estate.
  ///
  /// In ru, this message translates to:
  /// **'Недвижимость'**
  String get real_estate;

  /// No description provided for @real_estate1.
  ///
  /// In ru, this message translates to:
  /// **'Объекты недвижимости'**
  String get real_estate1;

  /// No description provided for @business_accounts.
  ///
  /// In ru, this message translates to:
  /// **'Бизнес-аккаунты'**
  String get business_accounts;

  /// No description provided for @favourites.
  ///
  /// In ru, this message translates to:
  /// **'Избранное'**
  String get favourites;

  /// No description provided for @announcements.
  ///
  /// In ru, this message translates to:
  /// **'Объявления'**
  String get announcements;

  /// No description provided for @search.
  ///
  /// In ru, this message translates to:
  /// **'ПОИСК'**
  String get search;

  /// No description provided for @category.
  ///
  /// In ru, this message translates to:
  /// **'Категория'**
  String get category;

  /// No description provided for @location.
  ///
  /// In ru, this message translates to:
  /// **'Местоположение'**
  String get location;

  /// No description provided for @our_location.
  ///
  /// In ru, this message translates to:
  /// **'Наше местоположение'**
  String get our_location;

  /// No description provided for @our_location1.
  ///
  /// In ru, this message translates to:
  /// **'Наш адрес'**
  String get our_location1;

  /// No description provided for @price.
  ///
  /// In ru, this message translates to:
  /// **'Цена'**
  String get price;

  /// No description provided for @clean.
  ///
  /// In ru, this message translates to:
  /// **'Очистить'**
  String get clean;

  /// No description provided for @the_most_expensive.
  ///
  /// In ru, this message translates to:
  /// **'самый дорогой'**
  String get the_most_expensive;

  /// No description provided for @the_cheapest.
  ///
  /// In ru, this message translates to:
  /// **'самый дешевый'**
  String get the_cheapest;

  /// No description provided for @no_announcements_in_my_favorites_section.
  ///
  /// In ru, this message translates to:
  /// **'В разделе избранного нет объявлений'**
  String get no_announcements_in_my_favorites_section;

  /// No description provided for @business_profiles.
  ///
  /// In ru, this message translates to:
  /// **'Бизнес-профили'**
  String get business_profiles;

  /// No description provided for @business_profile.
  ///
  /// In ru, this message translates to:
  /// **'Бизнес-профиль'**
  String get business_profile;

  /// No description provided for @account.
  ///
  /// In ru, this message translates to:
  /// **'Аккаунт'**
  String get account;

  /// No description provided for @my_business_account.
  ///
  /// In ru, this message translates to:
  /// **'Мой бизнес-аккаунт'**
  String get my_business_account;

  /// No description provided for @add_house.
  ///
  /// In ru, this message translates to:
  /// **'Добавить дом'**
  String get add_house;

  /// No description provided for @add_announcements.
  ///
  /// In ru, this message translates to:
  /// **'Добавить объявление'**
  String get add_announcements;

  /// No description provided for @language.
  ///
  /// In ru, this message translates to:
  /// **'Язык'**
  String get language;

  /// No description provided for @comments.
  ///
  /// In ru, this message translates to:
  /// **'Комментарии'**
  String get comments;

  /// No description provided for @rules.
  ///
  /// In ru, this message translates to:
  /// **'Правила'**
  String get rules;

  /// No description provided for @contact.
  ///
  /// In ru, this message translates to:
  /// **'Связаться'**
  String get contact;

  /// No description provided for @for_contact.
  ///
  /// In ru, this message translates to:
  /// **'Для связи'**
  String get for_contact;

  /// No description provided for @accistant.
  ///
  /// In ru, this message translates to:
  /// **'Помощник'**
  String get accistant;

  /// No description provided for @log_out.
  ///
  /// In ru, this message translates to:
  /// **'Выйти из системы'**
  String get log_out;

  /// No description provided for @log_out_confirm.
  ///
  /// In ru, this message translates to:
  /// **'Вы действительно хотите выйти из системы?'**
  String get log_out_confirm;

  /// No description provided for @administrator.
  ///
  /// In ru, this message translates to:
  /// **'Администратор'**
  String get administrator;

  /// No description provided for @not_found.
  ///
  /// In ru, this message translates to:
  /// **'Ничего не найдено'**
  String get not_found;

  /// No description provided for @my_inbox.
  ///
  /// In ru, this message translates to:
  /// **'Мои входящие'**
  String get my_inbox;

  /// No description provided for @my_comments.
  ///
  /// In ru, this message translates to:
  /// **'Мои комментарии'**
  String get my_comments;

  /// No description provided for @delete.
  ///
  /// In ru, this message translates to:
  /// **'Удалить'**
  String get delete;

  /// No description provided for @delete1.
  ///
  /// In ru, this message translates to:
  /// **'УДАЛИТЬ'**
  String get delete1;

  /// No description provided for @edit.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать'**
  String get edit;

  /// No description provided for @replier.
  ///
  /// In ru, this message translates to:
  /// **'Ответил'**
  String get replier;

  /// No description provided for @select_language.
  ///
  /// In ru, this message translates to:
  /// **'Выберите язык'**
  String get select_language;

  /// No description provided for @notification.
  ///
  /// In ru, this message translates to:
  /// **'Уведомление'**
  String get notification;

  /// No description provided for @not_logged_in_push.
  ///
  /// In ru, this message translates to:
  /// **'Вы не вошли в систему! Чтобы добавить объявление в избранное и просматривать избранные объявления, вам нужно войти в систему.'**
  String get not_logged_in_push;

  /// No description provided for @section.
  ///
  /// In ru, this message translates to:
  /// **'Категория'**
  String get section;

  /// No description provided for @unselected.
  ///
  /// In ru, this message translates to:
  /// **'Не выбрано'**
  String get unselected;

  /// No description provided for @selected.
  ///
  /// In ru, this message translates to:
  /// **'Выбрано'**
  String get selected;

  /// No description provided for @emlak.
  ///
  /// In ru, this message translates to:
  /// **'Выбрать объект'**
  String get emlak;

  /// No description provided for @mag_giriz.
  ///
  /// In ru, this message translates to:
  /// **'Введите информацию'**
  String get mag_giriz;

  /// No description provided for @yer_say.
  ///
  /// In ru, this message translates to:
  /// **'Выберите местоположение'**
  String get yer_say;

  /// No description provided for @eye_gir.
  ///
  /// In ru, this message translates to:
  /// **'Введите имя владельца/риелтора'**
  String get eye_gir;

  /// No description provided for @meydany_girizn.
  ///
  /// In ru, this message translates to:
  /// **'Введите площадь'**
  String get meydany_girizn;

  /// No description provided for @bahasyny_girizn.
  ///
  /// In ru, this message translates to:
  /// **'Введите цену'**
  String get bahasyny_girizn;

  /// No description provided for @telefon_belginizi_girizin.
  ///
  /// In ru, this message translates to:
  /// **'Введите ваш номер телефона'**
  String get telefon_belginizi_girizin;

  /// No description provided for @dugunama_bilen_tanysyn.
  ///
  /// In ru, this message translates to:
  /// **'Согласен с условиями'**
  String get dugunama_bilen_tanysyn;

  /// No description provided for @mum_sayla.
  ///
  /// In ru, this message translates to:
  /// **'Выберите удобства'**
  String get mum_sayla;

  /// No description provided for @bol_say.
  ///
  /// In ru, this message translates to:
  /// **'Выберите раздел'**
  String get bol_say;

  /// No description provided for @no_commentss.
  ///
  /// In ru, this message translates to:
  /// **'На данный момент нет информации'**
  String get no_commentss;

  /// No description provided for @sah_sayla.
  ///
  /// In ru, this message translates to:
  /// **'Выберите город'**
  String get sah_sayla;

  /// No description provided for @ul_duz.
  ///
  /// In ru, this message translates to:
  /// **'Правила использования'**
  String get ul_duz;

  /// No description provided for @seen.
  ///
  /// In ru, this message translates to:
  /// **'Просмотрено'**
  String get seen;

  /// No description provided for @contacted.
  ///
  /// In ru, this message translates to:
  /// **'Связались'**
  String get contacted;

  /// No description provided for @rem_sayla.
  ///
  /// In ru, this message translates to:
  /// **'Выбрать тип ремонта'**
  String get rem_sayla;

  /// No description provided for @room_number.
  ///
  /// In ru, this message translates to:
  /// **'Количество комнат'**
  String get room_number;

  /// No description provided for @floor_number.
  ///
  /// In ru, this message translates to:
  /// **'Количество этажей'**
  String get floor_number;

  /// No description provided for @all.
  ///
  /// In ru, this message translates to:
  /// **'Все'**
  String get all;

  /// No description provided for @all1.
  ///
  /// In ru, this message translates to:
  /// **'Все'**
  String get all1;

  /// No description provided for @show_places_with_pictures.
  ///
  /// In ru, this message translates to:
  /// **'Показать только дома с фотографиями'**
  String get show_places_with_pictures;

  /// No description provided for @show_newly_added_house.
  ///
  /// In ru, this message translates to:
  /// **'Показать недавно добавленные объекты недвижимости'**
  String get show_newly_added_house;

  /// No description provided for @sort.
  ///
  /// In ru, this message translates to:
  /// **'Сортировка'**
  String get sort;

  /// No description provided for @asc.
  ///
  /// In ru, this message translates to:
  /// **'Цена по возрастанию'**
  String get asc;

  /// No description provided for @desc.
  ///
  /// In ru, this message translates to:
  /// **'Цена по убыванию'**
  String get desc;

  /// No description provided for @house_type.
  ///
  /// In ru, this message translates to:
  /// **'Тип недвижимости'**
  String get house_type;

  /// No description provided for @repair_type.
  ///
  /// In ru, this message translates to:
  /// **'Тип ремонта'**
  String get repair_type;

  /// No description provided for @total_area.
  ///
  /// In ru, this message translates to:
  /// **'Общая площадь'**
  String get total_area;

  /// No description provided for @min.
  ///
  /// In ru, this message translates to:
  /// **'Минимум'**
  String get min;

  /// No description provided for @max.
  ///
  /// In ru, this message translates to:
  /// **'Максимум'**
  String get max;

  /// No description provided for @accept.
  ///
  /// In ru, this message translates to:
  /// **'Принять'**
  String get accept;

  /// No description provided for @name.
  ///
  /// In ru, this message translates to:
  /// **'Имя'**
  String get name;

  /// No description provided for @write_short_name_of_your_house.
  ///
  /// In ru, this message translates to:
  /// **'Напишите краткое название вашей недвижимости'**
  String get write_short_name_of_your_house;

  /// No description provided for @floor_number_of_the_building.
  ///
  /// In ru, this message translates to:
  /// **'Количество этажей здания'**
  String get floor_number_of_the_building;

  /// No description provided for @house_discription.
  ///
  /// In ru, this message translates to:
  /// **'Полное название, особенности, состояние и другая информация'**
  String get house_discription;

  /// No description provided for @area.
  ///
  /// In ru, this message translates to:
  /// **'Площадь'**
  String get area;

  /// No description provided for @your_phone_number.
  ///
  /// In ru, this message translates to:
  /// **'Ваш номер телефона'**
  String get your_phone_number;

  /// No description provided for @select_photo.
  ///
  /// In ru, this message translates to:
  /// **'Выберите фотографию'**
  String get select_photo;

  /// No description provided for @only_on_mekanly.
  ///
  /// In ru, this message translates to:
  /// **'Только на mekanly.com'**
  String get only_on_mekanly;

  /// No description provided for @seller_confirmed_only_mekanlyCom.
  ///
  /// In ru, this message translates to:
  /// **'Продавец подтвердил, что это объявление размещено только на mekanly.com.'**
  String get seller_confirmed_only_mekanlyCom;

  /// No description provided for @exclusive_push.
  ///
  /// In ru, this message translates to:
  /// **'Эта функция означает, что ваша недвижимость размещена исключительно на платформе mekanly.com. При использовании этой функции ваше объявление будет автоматически продвигаться вперед каждые 3 дня. Если будет добавлен новый дом, ваше объявление сместится вниз. Если поступит жалоба на то, что ваше объявление размещено на других платформах, эта функция будет автоматически отключена.'**
  String get exclusive_push;

  /// No description provided for @hashtag.
  ///
  /// In ru, this message translates to:
  /// **'Хэштег'**
  String get hashtag;

  /// No description provided for @hashtag_push.
  ///
  /// In ru, this message translates to:
  /// **'Хештеги — это ключевые слова, которые помогают пользователям найти ваше объявление при поиске жилья. Используйте не более 5 релевантных хештегов — это простой способ достичь вашей аудитории.'**
  String get hashtag_push;

  /// No description provided for @users_can_write_comments.
  ///
  /// In ru, this message translates to:
  /// **'Пользователи могут писать комментарии'**
  String get users_can_write_comments;

  /// No description provided for @are_you_sure_you_want_to_delete_this_announcement.
  ///
  /// In ru, this message translates to:
  /// **'Вы действительно хотите удалить это объявление?'**
  String get are_you_sure_you_want_to_delete_this_announcement;

  /// No description provided for @are_you_sure_you_want_to_move_this_announcement.
  ///
  /// In ru, this message translates to:
  /// **'Вы действительно хотите поднять это объявление вверх?'**
  String get are_you_sure_you_want_to_move_this_announcement;

  /// No description provided for @are_you_sure_you_want_to_price_this_announcement.
  ///
  /// In ru, this message translates to:
  /// **'Вы уверены, что хотите снизить цену на это объявление?'**
  String get are_you_sure_you_want_to_price_this_announcement;

  /// No description provided for @are_you_sure_you_want_to_price_this_lux.
  ///
  /// In ru, this message translates to:
  /// **'Вы действительно хотите сделать это объявление LUXE?'**
  String get are_you_sure_you_want_to_price_this_lux;

  /// No description provided for @are_you_sure_you_want_to_price_this_vip.
  ///
  /// In ru, this message translates to:
  /// **'Вы действительно хотите сделать это объявление VIP?'**
  String get are_you_sure_you_want_to_price_this_vip;

  /// No description provided for @bank_kart_sayla.
  ///
  /// In ru, this message translates to:
  /// **'Выберите банковскую карту'**
  String get bank_kart_sayla;

  /// No description provided for @bank_toleg.
  ///
  /// In ru, this message translates to:
  /// **'Страница оплаты'**
  String get bank_toleg;

  /// No description provided for @dow_et.
  ///
  /// In ru, this message translates to:
  /// **'Продолжить'**
  String get dow_et;

  /// No description provided for @edit1.
  ///
  /// In ru, this message translates to:
  /// **'Настройки'**
  String get edit1;

  /// No description provided for @dow_et_bn.
  ///
  /// In ru, this message translates to:
  /// **'Продолжая, я подтверждаю, что предоставленная выше информация является полной и достоверной, а также '**
  String get dow_et_bn;

  /// No description provided for @dow_et_bnn.
  ///
  /// In ru, this message translates to:
  /// **'Продолжая, я подтверждаю '**
  String get dow_et_bnn;

  /// No description provided for @phone_number_belgi.
  ///
  /// In ru, this message translates to:
  /// **'На ваш номер был отправлен 5-значный код'**
  String get phone_number_belgi;

  /// No description provided for @dow_et_bn_dowam.
  ///
  /// In ru, this message translates to:
  /// **' ознакомился и принимаю'**
  String get dow_et_bn_dowam;

  /// No description provided for @we.
  ///
  /// In ru, this message translates to:
  /// **' и '**
  String get we;

  /// No description provided for @goylansene.
  ///
  /// In ru, this message translates to:
  /// **'Дата'**
  String get goylansene;

  /// No description provided for @ul_gir.
  ///
  /// In ru, this message translates to:
  /// **'Вы не вошли в систему! Для этого действия необходимо войти в систему'**
  String get ul_gir;

  /// No description provided for @are_you_sure_you_want_to_add_this_announcement.
  ///
  /// In ru, this message translates to:
  /// **'Вы действительно хотите добавить это объявление?'**
  String get are_you_sure_you_want_to_add_this_announcement;

  /// No description provided for @please_wait_a_moment.
  ///
  /// In ru, this message translates to:
  /// **'Пожалуйста, подождите немного'**
  String get please_wait_a_moment;

  /// No description provided for @moderation_visible.
  ///
  /// In ru, this message translates to:
  /// **'Объявление сохранено. После модерации объявление будет видно всем пользователям!'**
  String get moderation_visible;

  /// No description provided for @successfully_completed.
  ///
  /// In ru, this message translates to:
  /// **'Успешно выполнено'**
  String get successfully_completed;

  /// No description provided for @no_information.
  ///
  /// In ru, this message translates to:
  /// **'Нет информации!'**
  String get no_information;

  /// No description provided for @informations.
  ///
  /// In ru, this message translates to:
  /// **'Информация'**
  String get informations;

  /// No description provided for @phone_number.
  ///
  /// In ru, this message translates to:
  /// **'Номер телефона'**
  String get phone_number;

  /// No description provided for @salesman_type.
  ///
  /// In ru, this message translates to:
  /// **'Тип продавца'**
  String get salesman_type;

  /// No description provided for @report.
  ///
  /// In ru, this message translates to:
  /// **'Пожоловаться'**
  String get report;

  /// No description provided for @submit_report.
  ///
  /// In ru, this message translates to:
  /// **'Отправить жалобу'**
  String get submit_report;

  /// No description provided for @message_not_shared_with_owner.
  ///
  /// In ru, this message translates to:
  /// **'Это сообщение не будет передано владельцу.'**
  String get message_not_shared_with_owner;

  /// No description provided for @send.
  ///
  /// In ru, this message translates to:
  /// **'Отправить'**
  String get send;

  /// No description provided for @send_request.
  ///
  /// In ru, this message translates to:
  /// **'Отправить запрос'**
  String get send_request;

  /// No description provided for @other_announcements.
  ///
  /// In ru, this message translates to:
  /// **'Другие объявления'**
  String get other_announcements;

  /// No description provided for @enter.
  ///
  /// In ru, this message translates to:
  /// **'Войти'**
  String get enter;

  /// No description provided for @share_with_friends.
  ///
  /// In ru, this message translates to:
  /// **'Поделитесь с друзьями'**
  String get share_with_friends;

  /// No description provided for @share_link.
  ///
  /// In ru, this message translates to:
  /// **'Поделиться ссылкой'**
  String get share_link;

  /// No description provided for @share_photo.
  ///
  /// In ru, this message translates to:
  /// **'Поделиться фотографией'**
  String get share_photo;

  /// No description provided for @share.
  ///
  /// In ru, this message translates to:
  /// **'Поделиться'**
  String get share;

  /// No description provided for @sold_out.
  ///
  /// In ru, this message translates to:
  /// **'Продано'**
  String get sold_out;

  /// No description provided for @notification_invalid.
  ///
  /// In ru, this message translates to:
  /// **'Объявление недействительно'**
  String get notification_invalid;

  /// No description provided for @unable_to_communicate.
  ///
  /// In ru, this message translates to:
  /// **'Невозможно связаться'**
  String get unable_to_communicate;

  /// No description provided for @no_picture.
  ///
  /// In ru, this message translates to:
  /// **'Нет фотографии'**
  String get no_picture;

  /// No description provided for @another_reason.
  ///
  /// In ru, this message translates to:
  /// **'Другая причина'**
  String get another_reason;

  /// No description provided for @not_rightful_owner.
  ///
  /// In ru, this message translates to:
  /// **'Не настоящий владелец'**
  String get not_rightful_owner;

  /// No description provided for @accepted_we_will_review.
  ///
  /// In ru, this message translates to:
  /// **'Принято, мы рассмотрим это объявление.'**
  String get accepted_we_will_review;

  /// No description provided for @add_status.
  ///
  /// In ru, this message translates to:
  /// **'Статус рекламы'**
  String get add_status;

  /// No description provided for @write_answer.
  ///
  /// In ru, this message translates to:
  /// **'Написать ответ'**
  String get write_answer;

  /// No description provided for @no_comments.
  ///
  /// In ru, this message translates to:
  /// **'Нет комментариев'**
  String get no_comments;

  /// No description provided for @write_comment.
  ///
  /// In ru, this message translates to:
  /// **'Написать комментарий'**
  String get write_comment;

  /// No description provided for @edit_comment.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать комментарий'**
  String get edit_comment;

  /// No description provided for @enter_new_comment.
  ///
  /// In ru, this message translates to:
  /// **'Введите новый комментарий...'**
  String get enter_new_comment;

  /// No description provided for @enter_comment.
  ///
  /// In ru, this message translates to:
  /// **'Введите комментарий...'**
  String get enter_comment;

  /// No description provided for @delete_comment.
  ///
  /// In ru, this message translates to:
  /// **'Удалить комментарий'**
  String get delete_comment;

  /// No description provided for @are_you_sure_delete_comment.
  ///
  /// In ru, this message translates to:
  /// **'Вы действительно хотите удалить этот комментарий?'**
  String get are_you_sure_delete_comment;

  /// No description provided for @verifying.
  ///
  /// In ru, this message translates to:
  /// **'Проверяется...'**
  String get verifying;

  /// No description provided for @yes.
  ///
  /// In ru, this message translates to:
  /// **'Да'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In ru, this message translates to:
  /// **'Нет'**
  String get no;

  /// No description provided for @read_full.
  ///
  /// In ru, this message translates to:
  /// **'Прочитать полностью'**
  String get read_full;

  /// No description provided for @accept_rules_comment.
  ///
  /// In ru, this message translates to:
  /// **'Я принимаю правила написания комментариев'**
  String get accept_rules_comment;

  /// No description provided for @send_sms.
  ///
  /// In ru, this message translates to:
  /// **'Отправить SMS'**
  String get send_sms;

  /// No description provided for @call.
  ///
  /// In ru, this message translates to:
  /// **'ПОЗВОНИТЬ'**
  String get call;

  /// No description provided for @ok.
  ///
  /// In ru, this message translates to:
  /// **'ОК'**
  String get ok;

  /// No description provided for @announcement_status.
  ///
  /// In ru, this message translates to:
  /// **'Статус объявления'**
  String get announcement_status;

  /// No description provided for @accepted.
  ///
  /// In ru, this message translates to:
  /// **'Принято'**
  String get accepted;

  /// No description provided for @not_accepted.
  ///
  /// In ru, this message translates to:
  /// **'Не принято'**
  String get not_accepted;

  /// No description provided for @services.
  ///
  /// In ru, this message translates to:
  /// **'УСЛУГИ'**
  String get services;

  /// No description provided for @free.
  ///
  /// In ru, this message translates to:
  /// **'Бесплатно'**
  String get free;

  /// No description provided for @correction.
  ///
  /// In ru, this message translates to:
  /// **'Внести правки'**
  String get correction;

  /// No description provided for @correction_description.
  ///
  /// In ru, this message translates to:
  /// **'Услуга внесения правок в ваше объявление доступна один раз в день. После внесения правок необходимо подождать, пока администратор их проверит.'**
  String get correction_description;

  /// No description provided for @make_discount.
  ///
  /// In ru, this message translates to:
  /// **'Сделать скидку'**
  String get make_discount;

  /// No description provided for @discount.
  ///
  /// In ru, this message translates to:
  /// **'Скидка'**
  String get discount;

  /// No description provided for @make_discount_description.
  ///
  /// In ru, this message translates to:
  /// **'Скидку можно сделать один раз каждые 5 дней после добавления объявления. Объявление со скидкой будет продвинуто вперед один раз, но при добавлении новых объявлений оно снова сместится вниз.'**
  String get make_discount_description;

  /// No description provided for @moving_forward.
  ///
  /// In ru, this message translates to:
  /// **'Продвинуть вперед'**
  String get moving_forward;

  /// No description provided for @moving_forward_description.
  ///
  /// In ru, this message translates to:
  /// **'Ваш дом combustible продвинут вперед один раз и размещен среди новых объявлений. При добавлении новых домов ваше объявление снова сместится вниз.'**
  String get moving_forward_description;

  /// No description provided for @make_vip.
  ///
  /// In ru, this message translates to:
  /// **'Сделать VIP'**
  String get make_vip;

  /// No description provided for @make_vip1.
  ///
  /// In ru, this message translates to:
  /// **'Сделать объявление VIP'**
  String get make_vip1;

  /// No description provided for @buy_vip_profile.
  ///
  /// In ru, this message translates to:
  /// **'Купить VIP-профиль'**
  String get buy_vip_profile;

  /// No description provided for @features_VIP_profile.
  ///
  /// In ru, this message translates to:
  /// **'Особенности VIP-профиля'**
  String get features_VIP_profile;

  /// No description provided for @make_vip_description.
  ///
  /// In ru, this message translates to:
  /// **'Дома с VIP-статусом имеют более высокую вероятность быстрой продажи. VIP-дома в течение 5 дней меняют свое местоположение и отличаются по цвету и внешнему виду.'**
  String get make_vip_description;

  /// No description provided for @make_luxe.
  ///
  /// In ru, this message translates to:
  /// **'Сделать LUXE'**
  String get make_luxe;

  /// No description provided for @make_luxe1.
  ///
  /// In ru, this message translates to:
  /// **'Сделать объявление LUXE'**
  String get make_luxe1;

  /// No description provided for @vipalert.
  ///
  /// In ru, this message translates to:
  /// **'Ваше объявление размещено в VIP-статусе! Когда срок VIP закончится, вы сможете воспользоваться услугой LUXE более высокого уровня'**
  String get vipalert;

  /// No description provided for @luxestatus.
  ///
  /// In ru, this message translates to:
  /// **'Услуга Luxe успешно выполнена'**
  String get luxestatus;

  /// No description provided for @vipestatus.
  ///
  /// In ru, this message translates to:
  /// **'Услуга VIP успешно выполнена'**
  String get vipestatus;

  /// No description provided for @make_luxe_description.
  ///
  /// In ru, this message translates to:
  /// **'LUXE-дома — это предложения от mekanly.com с высокой вероятностью быстрой продажи. LUXE-дома в течение 7 дней дважды в день меняют свое местоположение и отличаются по цвету и внешнему виду.'**
  String get make_luxe_description;

  /// No description provided for @lift_notification.
  ///
  /// In ru, this message translates to:
  /// **'Продвинуть объявление вперед'**
  String get lift_notification;

  /// No description provided for @lift_notification_discription.
  ///
  /// In ru, this message translates to:
  /// **'Дом будет продвинут вперед один раз и размещен среди новых объявлений. При добавлении новых объявлений ваше объявление снова сместится вниз.'**
  String get lift_notification_discription;

  /// No description provided for @make_lift.
  ///
  /// In ru, this message translates to:
  /// **'ПРОДВИНУТЬ ВПЕРЕД'**
  String get make_lift;

  /// No description provided for @seller_profile.
  ///
  /// In ru, this message translates to:
  /// **'Профиль продавца'**
  String get seller_profile;

  /// No description provided for @delivery.
  ///
  /// In ru, this message translates to:
  /// **'Доставка'**
  String get delivery;

  /// No description provided for @delivery_available.
  ///
  /// In ru, this message translates to:
  /// **'Доставка доступна'**
  String get delivery_available;

  /// No description provided for @delivery_available1.
  ///
  /// In ru, this message translates to:
  /// **'Услуга доставки доступна'**
  String get delivery_available1;

  /// No description provided for @description.
  ///
  /// In ru, this message translates to:
  /// **'Описание'**
  String get description;

  /// No description provided for @descriptionCopied.
  ///
  /// In ru, this message translates to:
  /// **'Описание скопировано'**
  String get descriptionCopied;

  /// No description provided for @briefly_describe_yourself.
  ///
  /// In ru, this message translates to:
  /// **'Кратко опишите себя'**
  String get briefly_describe_yourself;

  /// No description provided for @fill_contact_information.
  ///
  /// In ru, this message translates to:
  /// **'Заполните контактную информацию'**
  String get fill_contact_information;

  /// No description provided for @your_email_address.
  ///
  /// In ru, this message translates to:
  /// **'Ваш адрес электронной почты'**
  String get your_email_address;

  /// No description provided for @your_tiktok_page.
  ///
  /// In ru, this message translates to:
  /// **'Ваша страница TikTok'**
  String get your_tiktok_page;

  /// No description provided for @your_instagram_page.
  ///
  /// In ru, this message translates to:
  /// **'Ваша страница Instagram'**
  String get your_instagram_page;

  /// No description provided for @your_imo_page.
  ///
  /// In ru, this message translates to:
  /// **'Ваша страница Imo'**
  String get your_imo_page;

  /// No description provided for @my_announcements.
  ///
  /// In ru, this message translates to:
  /// **'Мои объявления'**
  String get my_announcements;

  /// No description provided for @about_us.
  ///
  /// In ru, this message translates to:
  /// **'О нас'**
  String get about_us;

  /// No description provided for @user_agreement.
  ///
  /// In ru, this message translates to:
  /// **'Пользовательское соглашение'**
  String get user_agreement;

  /// No description provided for @commenting_agreement.
  ///
  /// In ru, this message translates to:
  /// **'Соглашение о написании комментариев'**
  String get commenting_agreement;

  /// No description provided for @privacy_policy.
  ///
  /// In ru, this message translates to:
  /// **'Политика конфиденциальности'**
  String get privacy_policy;

  /// No description provided for @working_hours.
  ///
  /// In ru, this message translates to:
  /// **'Рабочее время: с 09:00 до 18:00'**
  String get working_hours;

  /// No description provided for @month.
  ///
  /// In ru, this message translates to:
  /// **'месяц'**
  String get month;

  /// No description provided for @month_0.
  ///
  /// In ru, this message translates to:
  /// **'Январь'**
  String get month_0;

  /// No description provided for @month_1.
  ///
  /// In ru, this message translates to:
  /// **'Февраль'**
  String get month_1;

  /// No description provided for @month_2.
  ///
  /// In ru, this message translates to:
  /// **'Март'**
  String get month_2;

  /// No description provided for @month_3.
  ///
  /// In ru, this message translates to:
  /// **'Апрель'**
  String get month_3;

  /// No description provided for @month_4.
  ///
  /// In ru, this message translates to:
  /// **'Май'**
  String get month_4;

  /// No description provided for @month_5.
  ///
  /// In ru, this message translates to:
  /// **'Июнь'**
  String get month_5;

  /// No description provided for @month_6.
  ///
  /// In ru, this message translates to:
  /// **'Июль'**
  String get month_6;

  /// No description provided for @month_7.
  ///
  /// In ru, this message translates to:
  /// **'Август'**
  String get month_7;

  /// No description provided for @month_8.
  ///
  /// In ru, this message translates to:
  /// **'Сентябрь'**
  String get month_8;

  /// No description provided for @month_9.
  ///
  /// In ru, this message translates to:
  /// **'Октябрь'**
  String get month_9;

  /// No description provided for @month_10.
  ///
  /// In ru, this message translates to:
  /// **'Ноябрь'**
  String get month_10;

  /// No description provided for @month_11.
  ///
  /// In ru, this message translates to:
  /// **'Декабрь'**
  String get month_11;

  /// No description provided for @possibility_1.
  ///
  /// In ru, this message translates to:
  /// **'Wi-Fi'**
  String get possibility_1;

  /// No description provided for @possibility_2.
  ///
  /// In ru, this message translates to:
  /// **'Стиральная машина'**
  String get possibility_2;

  /// No description provided for @possibility_3.
  ///
  /// In ru, this message translates to:
  /// **'Телевизор'**
  String get possibility_3;

  /// No description provided for @possibility_4.
  ///
  /// In ru, this message translates to:
  /// **'Кондиционер'**
  String get possibility_4;

  /// No description provided for @possibility_5.
  ///
  /// In ru, this message translates to:
  /// **'Мебель-шкаф'**
  String get possibility_5;

  /// No description provided for @possibility_6.
  ///
  /// In ru, this message translates to:
  /// **'Спальня'**
  String get possibility_6;

  /// No description provided for @possibility_7.
  ///
  /// In ru, this message translates to:
  /// **'Система отопления'**
  String get possibility_7;

  /// No description provided for @possibility_8.
  ///
  /// In ru, this message translates to:
  /// **'Холодильник'**
  String get possibility_8;

  /// No description provided for @possibility_9.
  ///
  /// In ru, this message translates to:
  /// **'Душ'**
  String get possibility_9;

  /// No description provided for @possibility_10.
  ///
  /// In ru, this message translates to:
  /// **'Кухня'**
  String get possibility_10;

  /// No description provided for @possibility_11.
  ///
  /// In ru, this message translates to:
  /// **'Мангал'**
  String get possibility_11;

  /// No description provided for @possibility_12.
  ///
  /// In ru, this message translates to:
  /// **'Бассейн'**
  String get possibility_12;

  /// No description provided for @possibility_13.
  ///
  /// In ru, this message translates to:
  /// **'Кухонная мебель'**
  String get possibility_13;

  /// No description provided for @possibility_14.
  ///
  /// In ru, this message translates to:
  /// **'Балкон'**
  String get possibility_14;

  /// No description provided for @possibility_15.
  ///
  /// In ru, this message translates to:
  /// **'Рабочий стол'**
  String get possibility_15;

  /// No description provided for @possibility_16.
  ///
  /// In ru, this message translates to:
  /// **'Лифт'**
  String get possibility_16;

  /// No description provided for @possibility_17.
  ///
  /// In ru, this message translates to:
  /// **'Печь'**
  String get possibility_17;

  /// No description provided for @possibility_19.
  ///
  /// In ru, this message translates to:
  /// **'Горячая вода'**
  String get possibility_19;

  /// No description provided for @repair_type_1.
  ///
  /// In ru, this message translates to:
  /// **'Дизайнерский'**
  String get repair_type_1;

  /// No description provided for @repair_type_2.
  ///
  /// In ru, this message translates to:
  /// **'Евроремонт'**
  String get repair_type_2;

  /// No description provided for @repair_type_3.
  ///
  /// In ru, this message translates to:
  /// **'Хай-тек ремонт'**
  String get repair_type_3;

  /// No description provided for @repair_type_4.
  ///
  /// In ru, this message translates to:
  /// **'Косметический'**
  String get repair_type_4;

  /// No description provided for @repair_type_5.
  ///
  /// In ru, this message translates to:
  /// **'Грубый ремонт'**
  String get repair_type_5;

  /// No description provided for @repair_type_6.
  ///
  /// In ru, this message translates to:
  /// **'Средний ремонт'**
  String get repair_type_6;

  /// No description provided for @repair_type_7.
  ///
  /// In ru, this message translates to:
  /// **'Требует ремонта'**
  String get repair_type_7;

  /// No description provided for @house_type_1.
  ///
  /// In ru, this message translates to:
  /// **'Квартира'**
  String get house_type_1;

  /// No description provided for @house_type_2.
  ///
  /// In ru, this message translates to:
  /// **'Коттедж'**
  String get house_type_2;

  /// No description provided for @house_type_3.
  ///
  /// In ru, this message translates to:
  /// **'Элитка'**
  String get house_type_3;

  /// No description provided for @house_type_4.
  ///
  /// In ru, this message translates to:
  /// **'Полуэлитка'**
  String get house_type_4;

  /// No description provided for @house_type_5.
  ///
  /// In ru, this message translates to:
  /// **'Дача'**
  String get house_type_5;

  /// No description provided for @house_type_6.
  ///
  /// In ru, this message translates to:
  /// **'Планируемый дом'**
  String get house_type_6;

  /// No description provided for @subcategory_3.
  ///
  /// In ru, this message translates to:
  /// **'Кровати, диваны и кресла'**
  String get subcategory_3;

  /// No description provided for @subcategory_4.
  ///
  /// In ru, this message translates to:
  /// **'Шкафы, комоды и полки'**
  String get subcategory_4;

  /// No description provided for @subcategory_5.
  ///
  /// In ru, this message translates to:
  /// **'Столы'**
  String get subcategory_5;

  /// No description provided for @subcategory_6.
  ///
  /// In ru, this message translates to:
  /// **'Стулья'**
  String get subcategory_6;

  /// No description provided for @subcategory_7.
  ///
  /// In ru, this message translates to:
  /// **'Детская мебель'**
  String get subcategory_7;

  /// No description provided for @subcategory_8.
  ///
  /// In ru, this message translates to:
  /// **'Предметы интерьера'**
  String get subcategory_8;

  /// No description provided for @subcategory_9.
  ///
  /// In ru, this message translates to:
  /// **'Кухонная мебель'**
  String get subcategory_9;

  /// No description provided for @subcategory_10.
  ///
  /// In ru, this message translates to:
  /// **'Шторы и жалюзи'**
  String get subcategory_10;

  /// No description provided for @subcategory_16.
  ///
  /// In ru, this message translates to:
  /// **'Посудомоечные машины'**
  String get subcategory_16;

  /// No description provided for @subcategory_17.
  ///
  /// In ru, this message translates to:
  /// **'Холодильники и морозильники'**
  String get subcategory_17;

  /// No description provided for @subcategory_18.
  ///
  /// In ru, this message translates to:
  /// **'Кондиционеры'**
  String get subcategory_18;

  /// No description provided for @subcategory_19.
  ///
  /// In ru, this message translates to:
  /// **'Пылесосы'**
  String get subcategory_19;

  /// No description provided for @subcategory_20.
  ///
  /// In ru, this message translates to:
  /// **'Телевизоры'**
  String get subcategory_20;

  /// No description provided for @subcategory_21.
  ///
  /// In ru, this message translates to:
  /// **'Тюнеры и другая электроника'**
  String get subcategory_21;

  /// No description provided for @subcategory_22.
  ///
  /// In ru, this message translates to:
  /// **'Газовые и электрические плиты'**
  String get subcategory_22;

  /// No description provided for @subcategory_23.
  ///
  /// In ru, this message translates to:
  /// **'Кухонные комбайны'**
  String get subcategory_23;

  /// No description provided for @subcategory_24.
  ///
  /// In ru, this message translates to:
  /// **'Утюги'**
  String get subcategory_24;

  /// No description provided for @subcategory_25.
  ///
  /// In ru, this message translates to:
  /// **'Обогреватели'**
  String get subcategory_25;

  /// No description provided for @subcategory_26.
  ///
  /// In ru, this message translates to:
  /// **'Ковры для намаза'**
  String get subcategory_26;

  /// No description provided for @subcategory_27.
  ///
  /// In ru, this message translates to:
  /// **'Туркменские ковры'**
  String get subcategory_27;

  /// No description provided for @subcategory_28.
  ///
  /// In ru, this message translates to:
  /// **'Ковры ручной работы'**
  String get subcategory_28;

  /// No description provided for @subcategory_29.
  ///
  /// In ru, this message translates to:
  /// **'Настенные ковры'**
  String get subcategory_29;

  /// No description provided for @subcategory_30.
  ///
  /// In ru, this message translates to:
  /// **'Ковровые сумки'**
  String get subcategory_30;

  /// No description provided for @subcategory_31.
  ///
  /// In ru, this message translates to:
  /// **'Текстильные изделия'**
  String get subcategory_31;

  /// No description provided for @subcategory_32.
  ///
  /// In ru, this message translates to:
  /// **'Ковры для автомобилей'**
  String get subcategory_32;

  /// No description provided for @subcategory_33.
  ///
  /// In ru, this message translates to:
  /// **'Классические люстры'**
  String get subcategory_33;

  /// No description provided for @subcategory_34.
  ///
  /// In ru, this message translates to:
  /// **'LED-люстры'**
  String get subcategory_34;

  /// No description provided for @subcategory_35.
  ///
  /// In ru, this message translates to:
  /// **'Хрустальные люстры'**
  String get subcategory_35;

  /// No description provided for @subcategory_37.
  ///
  /// In ru, this message translates to:
  /// **'Люстры в виде свечей'**
  String get subcategory_37;

  /// No description provided for @subcategory_38.
  ///
  /// In ru, this message translates to:
  /// **'Люстры с вентилятором'**
  String get subcategory_38;

  /// No description provided for @subcategory_39.
  ///
  /// In ru, this message translates to:
  /// **'Настенные светильники'**
  String get subcategory_39;

  /// No description provided for @subcategory_40.
  ///
  /// In ru, this message translates to:
  /// **'Умное освещение'**
  String get subcategory_40;

  /// No description provided for @subcategory_42.
  ///
  /// In ru, this message translates to:
  /// **'Двери'**
  String get subcategory_42;

  /// No description provided for @subcategory_43.
  ///
  /// In ru, this message translates to:
  /// **'Сантехника и водоснабжение'**
  String get subcategory_43;

  /// No description provided for @subcategory_44.
  ///
  /// In ru, this message translates to:
  /// **'Окна'**
  String get subcategory_44;

  /// No description provided for @subcategory_45.
  ///
  /// In ru, this message translates to:
  /// **'Полы'**
  String get subcategory_45;

  /// No description provided for @subcategory_46.
  ///
  /// In ru, this message translates to:
  /// **'Потолки'**
  String get subcategory_46;

  /// No description provided for @subcategory_47.
  ///
  /// In ru, this message translates to:
  /// **'Обои'**
  String get subcategory_47;

  /// No description provided for @subcategory_48.
  ///
  /// In ru, this message translates to:
  /// **'Инструменты'**
  String get subcategory_48;

  /// No description provided for @subcategory_49.
  ///
  /// In ru, this message translates to:
  /// **'Оборудование для безопасности'**
  String get subcategory_49;

  /// No description provided for @subcategory_50.
  ///
  /// In ru, this message translates to:
  /// **'Вентиляция и отопление'**
  String get subcategory_50;

  /// No description provided for @subcategory_51.
  ///
  /// In ru, this message translates to:
  /// **'Шифер и металлические изделия'**
  String get subcategory_51;

  /// No description provided for @subcategory_53.
  ///
  /// In ru, this message translates to:
  /// **'Стиральные машины'**
  String get subcategory_53;

  /// No description provided for @subcategory_54.
  ///
  /// In ru, this message translates to:
  /// **'Ковры с цветочным узором'**
  String get subcategory_54;

  /// No description provided for @subcategory_55.
  ///
  /// In ru, this message translates to:
  /// **'Краски и лаки'**
  String get subcategory_55;

  /// No description provided for @subcategory_56.
  ///
  /// In ru, this message translates to:
  /// **'Люстры в виде шаров'**
  String get subcategory_56;

  /// No description provided for @subcategory_57.
  ///
  /// In ru, this message translates to:
  /// **'Другие осветительные приборы'**
  String get subcategory_57;

  /// No description provided for @bscategory_2.
  ///
  /// In ru, this message translates to:
  /// **'Мебель'**
  String get bscategory_2;

  /// No description provided for @bscategory_11.
  ///
  /// In ru, this message translates to:
  /// **'Бытовая техника'**
  String get bscategory_11;

  /// No description provided for @bscategory_12.
  ///
  /// In ru, this message translates to:
  /// **'Ковры и текстиль'**
  String get bscategory_12;

  /// No description provided for @bscategory_13.
  ///
  /// In ru, this message translates to:
  /// **'Люстры и освещение'**
  String get bscategory_13;

  /// No description provided for @bscategory_14.
  ///
  /// In ru, this message translates to:
  /// **'Строительство'**
  String get bscategory_14;

  /// No description provided for @categoryy_Satlyk_jaylar.
  ///
  /// In ru, this message translates to:
  /// **'Дом на продажу'**
  String get categoryy_Satlyk_jaylar;

  /// No description provided for @categoryy_Kireyne_jaylar.
  ///
  /// In ru, this message translates to:
  /// **'Дом в аренду'**
  String get categoryy_Kireyne_jaylar;

  /// No description provided for @categoryy_Kireyne_otaglar.
  ///
  /// In ru, this message translates to:
  /// **'Комната в аренду'**
  String get categoryy_Kireyne_otaglar;

  /// No description provided for @categoryy_Kireyne_ofisler.
  ///
  /// In ru, this message translates to:
  /// **'Офис в аренду'**
  String get categoryy_Kireyne_ofisler;

  /// No description provided for @categoryy_Kireyne_sowda_emlakler.
  ///
  /// In ru, this message translates to:
  /// **'Коммерческая недвижимость в аренду'**
  String get categoryy_Kireyne_sowda_emlakler;

  /// No description provided for @categoryy_Satlyk_sowda_emlakler.
  ///
  /// In ru, this message translates to:
  /// **'Коммерческая недвижимость на продажу'**
  String get categoryy_Satlyk_sowda_emlakler;

  /// No description provided for @categoryy_Beyleki_emlakler.
  ///
  /// In ru, this message translates to:
  /// **'Прочая недвижимость'**
  String get categoryy_Beyleki_emlakler;

  /// No description provided for @category_0.
  ///
  /// In ru, this message translates to:
  /// **'Дома на продажу'**
  String get category_0;

  /// No description provided for @category_1.
  ///
  /// In ru, this message translates to:
  /// **'Дома в аренду'**
  String get category_1;

  /// No description provided for @category_2.
  ///
  /// In ru, this message translates to:
  /// **'Комнаты в аренду'**
  String get category_2;

  /// No description provided for @category_3.
  ///
  /// In ru, this message translates to:
  /// **'Офисы в аренду'**
  String get category_3;

  /// No description provided for @category_4.
  ///
  /// In ru, this message translates to:
  /// **'Коммерческая недвижимость в аренду'**
  String get category_4;

  /// No description provided for @category_5.
  ///
  /// In ru, this message translates to:
  /// **'Коммерческая недвижимость на продажу'**
  String get category_5;

  /// No description provided for @category_6.
  ///
  /// In ru, this message translates to:
  /// **'Прочая недвижимость'**
  String get category_6;

  /// No description provided for @filtr.
  ///
  /// In ru, this message translates to:
  /// **'Фильтры'**
  String get filtr;

  /// No description provided for @eyesi.
  ///
  /// In ru, this message translates to:
  /// **'Владелец'**
  String get eyesi;

  /// No description provided for @reiltor.
  ///
  /// In ru, this message translates to:
  /// **'Риэлтор'**
  String get reiltor;

  /// No description provided for @mumkincilikler.
  ///
  /// In ru, this message translates to:
  /// **'Возможности'**
  String get mumkincilikler;

  /// No description provided for @remont_gorn.
  ///
  /// In ru, this message translates to:
  /// **'Тип ремонта'**
  String get remont_gorn;

  /// No description provided for @remont.
  ///
  /// In ru, this message translates to:
  /// **'Ремонта'**
  String get remont;

  /// No description provided for @jog_giz.
  ///
  /// In ru, this message translates to:
  /// **'Скрыть ответы'**
  String get jog_giz;

  /// No description provided for @jog_gor.
  ///
  /// In ru, this message translates to:
  /// **'Показать ответы'**
  String get jog_gor;

  /// No description provided for @help_hashtag.
  ///
  /// In ru, this message translates to:
  /// **'Нажмите добавить и введите хештег'**
  String get help_hashtag;

  /// No description provided for @discout_succes.
  ///
  /// In ru, this message translates to:
  /// **'Скидка была успешно применена.'**
  String get discout_succes;

  /// No description provided for @discout_error.
  ///
  /// In ru, this message translates to:
  /// **'Произошла ошибка'**
  String get discout_error;

  /// No description provided for @added_favorite.
  ///
  /// In ru, this message translates to:
  /// **'Добавлено в избранное'**
  String get added_favorite;

  /// No description provided for @delete_favorite.
  ///
  /// In ru, this message translates to:
  /// **'Удалено из избранного'**
  String get delete_favorite;

  /// No description provided for @viewed.
  ///
  /// In ru, this message translates to:
  /// **'Просмотрено'**
  String get viewed;

  /// No description provided for @contected.
  ///
  /// In ru, this message translates to:
  /// **'Связались'**
  String get contected;

  /// No description provided for @user_is_not_logged_in.
  ///
  /// In ru, this message translates to:
  /// **'Произошла ошибка при входе в систему'**
  String get user_is_not_logged_in;

  /// No description provided for @user_is_logged_in.
  ///
  /// In ru, this message translates to:
  /// **'Вход в систему выполнен успешно'**
  String get user_is_logged_in;

  /// No description provided for @bolyar.
  ///
  /// In ru, this message translates to:
  /// **'Хорошо'**
  String get bolyar;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ru', 'tk'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ru':
      return AppLocalizationsRu();
    case 'tk':
      return AppLocalizationsTk();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
