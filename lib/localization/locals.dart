import 'package:flutter/material.dart';
import 'package:mekanly_com/config/const.dart';

class Locals {
  Locals(this.locale);
  final Locale locale;
  static Locals of(BuildContext context) {
    return Localizations.of<Locals>(context, Locals)!;
  }

  static loggerLocals() {
    logger("TM ${_localizedValues['tk']?.length}");
    logger("RU ${_localizedValues['ru']?.length}");
    logger("EN ${_localizedValues['en']?.length}");
  }

  static const _localizedValues = <String, Map<String, String>>{
    'tk': {
      'kat1': 'Satlyk jaýlar',
      'kat2': 'Kireýne jaýlar',
      'kat3': 'Kireýne otaglar',
      'kat4': 'Kireýne ofisler',
      'kat5': 'Kireýne söwda emläkleri',
      'kat6': 'Satlyk söwda emläkleri',
      'kat7': 'Beýleki emläkler',
      'kat8': 'Goýlan senesi',
      'kat9': 'Goşan emläkleriňizi bu ýerden görüň!',
      'kat10': 'Emlägiňizi mekanly.com bilen mahabatlandyryň we girdeji gazanyň. Bu aňsat',
      'kat11': 'Gözleg',
      'kat12': 'EMLÄKLER',
      'kat13': 'KATEGORIÝA',
      'kat14': 'Bölümi',
      'kat15': 'Esasy maglumatlar',
      'kat16': 'Emläklerim',
      'kat17': 'MUGT',
      'kat18': 'Mugt we tölegli hyzmatlar',
      'kat19': 'Bildirişi LUXE etmek',
      'kat20': 'LUXE etmek',
      'kat22': 'saýlanmadyk',
      'kat21': 'LUXE derejeli jaylar tiz satylmak mümkinçiligi yokarydyr. LUXE derejelil jaýlar 3 günün dowamynda yerini üýtgedip duryar hem-de reñki we görnüsi boyunça tapawutlanýar.',
      'kat23': 'surat goşuldy',
      'kat24': 'Parolyňyzy öwrenmek üçin Jäň edip administrator bilen habarlaşyň',
      'all': 'Ählisi',
      'phoneNumber': 'Nomeri',
      'city': 'Şäher içi',
      'add': 'Goşmak',
      'home': 'Baş sahypa',
      'avaza': 'Kenarýaka',
      'mountain': 'Dag etegi',
      'cottage': 'Kottej',
      'plan': 'Plan jaý',
      'room': 'Otag',
      'wifi': 'Wi-Fi',
      'shower': 'Banýa',
      'kitchen': 'Aşhana',
      'washer': 'Kir maşyn',
      'tv': 'Telewizor',
      'conditioner': 'Kondisioner',
      'ward': 'Mebel-şkaf',
      'bed': 'Spalny',
      'hot': 'Gyzgyn suw',
      'fridge': 'Sowadyjy',
      'where': 'Nirä?',
      'pressAgain': 'Çykmak üçin ýene bir gezek basyň',
      'price': 'Bahasy',
      'minPrice': 'iň arzan',
      'maxPrice': 'iň gymmat',
      'sort': 'Tertipleme',
      'notSelected': 'Ählisi',
      'cheapToExp': 'Arzandan - gymmada',
      'expToCheap': 'Gymmatdan - arzana',
      'location': 'Ýerleşýän ýeri',
      'roomCount': 'Otag sany',
      'floorCount': 'Gat sany',
      'guestCount': 'Adam sany',
      'possibilities': 'Mümkinçilikler',
      'filters': 'Filterler',
      'whenTravel': 'Syýahatyňyz haçan?',
      'find': 'Gözle',
      'regions': 'Şäherler',
      'allReg': 'Hemmesi',
      'addingHouse': 'Jaý goşmak',
      'doUWantToAdd': 'Siz hakykatdanam jaý goşmakçymy?',
      'doUWantToUpdate': 'Siz hakykatdanam şu bildirişi üýtgetmekçimi?',
      'pleaseWait': 'Az wagt garaşyň...',
      'houseAddedAndSaved': 'Ýatda saklanyldy. Administrator barlandan soň bildiriş ähli ulanyjylara görüner.',
      'updatingHouse': 'Jaý üýtgedilýär...',
      'updateHouse': 'Jaý üýtgetmek',
      'adminChecking': 'Administrator bildirişiňizi barlaýar...',
      'editComment': 'Üýtgetmek',
      'houseName': 'Ady',
      'nameHint': 'Jaýyňyzyň gysgaça adyny ýazyň',
      'category': 'Kategoriýa',
      'whenJourney': 'Haýsy günlerde kireýine berýärsiňiz?',
      'limitImages': '10 suratdan köp goşup bolanok',
      'rules': 'Öýüň düzgünleri',
      'leaveTime': 'Iň giç giriş wagty:',
      'enterTime': 'Iň ir çykyş wagty:',
      'any': 'islendik',
      'description': 'Doly ady, aýratynlygy, ýagdaýy we ş.m maglmat ',
      'categType': 'Kategoriýa',
      'mainImage': 'ESASY SURAT',
      'insertImage': 'Suratlary saýlaň',
      'dailyPrice': 'Bahasy',
      'yourPhone': 'Telefon belgiňiz:',
      'terms': 'Düzgünnama',
      'canComment': 'Teswir ýazyp bilýär',
      'loginToComment': 'Siz ulagama girmänsiňiz! Teswir ýazmak üçin ulgama girmegiňiz gerek',
      'habarnama': 'Habarnama',
      'addTheHouse': 'Jaýy goş',
      'rating': 'Bahalandyrma',
      'allInfo': 'Giňişleýin maglumat',
      'rentalDays': 'Kireýne berilýän günler',
      'place': 'Ýeri',
      'provides': 'Size nähili mümkinçilikler garaşýar',
      'answer': 'Jogap ber',
      'answerer': 'Jogap beriji',
      'checkingComment': 'Teswir barlanylýar',
      'comments': 'Bahalandyrmalar we teswirler',
      'seeAll': 'Ählisini gör',
      'bron': 'Jaň etmek',
      'rate': 'Baha ber',
      'retry': 'Täzeden synanyşyň',
      'writeComment': 'Teswir ýazyň...',
      'commentSaved': 'Teswiriňiz ýatda saklanyldy',
      'userNotFound': 'Ulanyjy tapylmady. Agza boluň...',
      'acceptTerms': 'Teswir ýazmak kadalaryny kabul edýärin',
      'deny': 'Goý bolsun',
      'accept': 'Ugrat',
      'apply': 'Kabul et',
      'profil': 'Profil',
      'language': 'Dil',
      'myPosts': 'Jaýym',
      'myFavs': 'Halanlarym',
      'addedToFav': 'Halanlaryma goşuldy',
      'removedFromFav': 'Halanlarymdan aýryldy',
      'myComments': 'Teswirler',
      'writtenToThem': 'Meniň ýazanlarym',
      'writtemToMe': 'Maňa ýazylanlar',
      'contactMe': 'Habarlaşmak',
      'guide': 'Kömekçi',
      'expired': 'Wagty doldy, düzediş ediň!',
      'infos': 'Maglumatlar',
      'services': 'Hyzmatlar',
      'delete': 'Pozmak',
      'remove': 'Aýyr',
      'uSureRemoveHouse': 'Jaýy aýyrmak isleýärsiňizmi?',
      'uSureMoveUpHouse': 'Jaýy hakykatdanam öňe süýşürmekçimi?',
      'edit': 'Düzediş etmek',
      'editGuide': 'Jaýyňyza düzediş girizmek. Günde 2 gezek düzediş girizip bolýar. Düzediş administrator barlaýança az wagt garaşmaly',
      'editWarning': 'Günde 2 gezek, ýagny her 12 sagatdan düzediş girizip bolýar. Indiki düzediş girizip boljak wagtyňyz: ',
      'moveForward': 'Öňe süýşürmek',
      'notMovedForward': 'Öňe süýşürilmedi! Siz bu bildirişi aşakdaky wagtdan soň öňe süýşürip bilersiňiz.',
      'minutes': 'minutdan',
      'hours': 'sagatdan',
      'days': 'günden',
      'forwardGuide': 'Jaýyňyz bir gezeklik ýokaryk süýşürilýär we täze jaýlaryň arasynda ýerleşdirilýär. Täze jaý goşulsa, siziň jaýyňyz ýene-de aşak süýşüp gider.',
      'login': 'Ulgama girmek',
      'loginFirst': 'Ilki bilen ulgama girmeli!',
      'logout': 'Ulgamdan çykmak',
      'reallyLogout': 'Hasapdan çykmak isleýäňizmi',
      'reallyGoBack': 'Siz hakykatdanam yza çykmakçymy?',
      'ifYouGoBack': 'Eger bu sahypadan çyksaňyz siziň girizen ähli maglumatlaryňyz ýiter. Indiki gezek täzeden görkezmeli bolarsyňyz',
      'username': 'Ulanyjy ady',
      'phone': 'Telefon',
      'email': 'Email',
      'passCode': 'Parol',
      'reTypePass': 'Parol täzeden ýazyň',
      'forgottenPass': 'Paroly ýatdan çykardyňmy?',
      'register': 'Agza bol',
      'readAndAccept': 'Düzgünnamany okadym we kabul etýärin',
      'insertPhoeOTP': 'Siziň telefon nomeriňize ugradylan san belgini ýazyň',
      'insertEmailOTP': 'Siziň poçtaňyza gelen san belgini ýazyň',
      'arrivalOtp': 'Size gelen belgi',
      'verify': 'TASSYKLAMAK',
      'checkYourInternetAndRetry': 'Internet baglanyşygy ýok internetiňizi barlap, täzeden synanyşyň',
      'noInternet': 'Internet ýok',
      'notAccepted': 'Kabul edilmedi',
      'houseRejected': 'Jaýyňyz kabul edilmedi',
      'rangeLimit': '2 aýdan köp saýlap bolmaýar',
      'sthWentWrong': 'Näsazlyk döredi, biraz wagtdan synanyşyň',
      'makeSure': 'Şertleri doly kanagatlandyryň!',
      'notFoundInfo': 'Siziň gözlegiňiz boýunça hiç zat tapylmady.',
      'inserPhoneWarning': 'Telefon belgiňizi giriziň!',
      'mustbe8Digit': '8 sifr bolmaly!',
      'insertPass': 'Paroly giriz',
      'reInsertPass': 'Paroly täzeden ýazyň',
      'notMatch': 'Parollar gabat gelenok',
      'insertUsername': 'Ulanyjy ady giriziň!',
      'insertEmail': 'Email giriziň!',
      'wrongEmail': 'Nädogry email!',
      'fillAllBlanks': 'Ähli boşluklary dolduryň!',
      'doneSuccessfully': 'Üstünlikli ýerine ýetirildi!',
      'startWith6': '6 yada 7 bilen başlamaly',
      'workinOn': 'Ýerine ýetirilýär.',
      'commentTerms': 'Teswir ýazmagyň düzgünleri',
      'no': 'Ýok',
      'yes': 'Hawa',
      'houseMovedForward': 'Jaý öňe süýşürildi',
      'dontPayForward': 'Jaýy kireýne alanyňyzda, görmän hiç kime öňünden bölek ýa-da doly töleg (telefon arkaly we ş.m) geçiriji bolmaň. Diňe öý eýesini özüňiz görüp hakykylyga göz ýetirip ediň',
      'confirm': 'Tassyklamak',
      'yourHousewillbeInvisible': 'Eger jaýyňyz bron edilen bolsa, baş sahypadan aýrylar',
      'yourHousewillbeVisible': 'Siziň jaýyňyz baş sahypada bron etmek üçin açyk bolar',
      'isYourHBronned': 'Siziň jaýyňyz bron edildimi?',
      'sendEmptySms': 'boş sms ugratmak',
      'bronned': 'Bron edildi',
      'putted': 'Kabul edildi',
      'enterThoughts': 'Programma barada pikirleriňizi ýazyp bilersiňiz',
      'removedFromHomepage': 'Baş sahypadan aýryldy',
      'pending': 'Garaşylýar',
      'deletedSuccessfully': 'Jaýyňyz ulgamdan aýyryldy!',
      'houseEdited': 'Jaýyňyzy üstünlikli üýtgedildi!',
      'unbronned': 'Bron edilmedik',
      'send': 'Ugrat',
      'contactAdmin': 'Administrator bilen habarlaşmak',
      'thenSendSMS': 'belgä boş sms ugradyň. Ugradanyňyzdan soň biraz wagt garaşyň.',
      'inOrderVerify': 'Telefon belgini tassyklamak üçin',
      'to': 'belgiden',
      'bronCondition': 'Jaýyň ýagdaýy: ',
      'unbronnedAndAppeared': 'Baş sahypada goýuldy. Bron edilmedik',
      'bronnedAndDisappeared': 'Baş sahypadan aýryldy. Bron edildi',
      'expiredPleaseEdit': 'Jaýyňyzy kireýne berýän wagtyňyz gutardy, düzediş ediň. Jaýyňyz baş sahypadan aýryldy',
      'choose': 'Saýla',
    },
    'en': {
      'kat23': 'images added',
      'kat22': 'not selected',
      'kat21': 'LUXE apartments have a high chance of being sold quickly. LUXE-class houses will change their location during 3 days and differ in color and appearance.',
      'kat17': 'FREE',
      'kat18': 'Free and paid services',
      'kat19': 'Make your home LUX',
      'kat20': 'Make it LUX',
      'kat16': 'My Properties',
      'kat14': 'Department',
      'kat15': 'Basic information',
      'kat13': 'CATEGORIES',
      'kat12': 'REAL ESTATES',
      'kat11': 'Search',
      'kat9': 'View your added properties here!',
      'kat10': 'Advertise your property on mecanly.com and earn money. It is easy',
      'kat8': 'Date posted',
      'kat1': 'Houses for sale',
      'kat2': 'Houses for rent',
      'kat3': 'Rooms for Rent',
      'kat4': 'Offices for rent',
      'kat5': 'Commercial Properties for Rent',
      'kat6': 'Commercial Properties For Sale',
      'kat7': 'Other Properties',
      'kat24': 'To learn your password, call and contact the administrator',
      'all': 'All',
      'city': 'City',
      'add': 'Add',
      'home': 'Home',
      'avaza': 'Beach',
      'mountain': 'Foothills',
      'cottage': 'Cottage',
      'plan': 'Plan house',
      'room': 'Room',
      'wifi': 'Wi-Fi',
      'shower': 'Shower',
      'kitchen': 'Kitchen',
      'washer': 'Washing machine',
      'tv': 'Television',
      'conditioner': 'Air conditioner',
      'ward': 'Furniture-wardrobe',
      'bed': 'Bed',
      'hot': 'Hot water',
      'fridge': 'Fridge',
      'where': 'Where?',
      'pressAgain': 'Press back once again to quit',
      'price': 'Price',
      'minPrice': 'min',
      'maxPrice': 'max',
      'sort': 'Sorting',
      'notSelected': 'All',
      'cheapToExp': 'Price ascending',
      'expToCheap': 'Descending price',
      'location': 'Location',
      'roomCount': 'Room count',
      'floorCount': 'Floor',
      'guestCount': 'Guest count',
      'possibilities': 'Facilities',
      'filters': 'Filters',
      'whenTravel': 'When is your travel?',
      'find': 'Search',
      'regions': 'Cities',
      'allReg': 'Select all',
      'addingHouse': 'Adding house',
      'doUWantToAdd': 'Do you want to post this house?',
      'doUWantToUpdate': 'Do you want to update this house?',
      'pleaseWait': 'Please wait some time...',
      'houseAddedAndSaved': 'Saved successfully. Once the administrator is verified, the notification will be visible to all users',
      'updatingHouse': 'Updating house',
      'updateHouse': 'Update house',
      'adminChecking': 'Admin is checking your post...',
      'editComment': 'Edit',
      'houseName': 'Naming',
      'nameHint': 'Enter the short naming',
      'category': 'Category',
      'whenJourney': 'What days do we accept guests?',
      'limitImages': 'Maximum 10 images can be selected',
      'rules': 'House Rules',
      'enterTime': 'Earliest entry time:',
      'leaveTime': 'Latest check out time:',
      'any': 'any',
      'description': 'Full name, feature, status etc information',
      'categType': 'Category',
      'mainImage': 'MAIN IMAGE',
      'insertImage': 'Select photos',
      'dailyPrice': 'Price',
      'yourPhone': 'Phone number:',
      'terms': 'Rules and Conditions',
      'canComment': 'Users can write reviews',
      'loginToComment': 'You must be logged in to post a comment',
      'habarnama': 'Warning',
      'addTheHouse': 'Add house',
      'rating': 'Rating',
      'allInfo': 'Total Information',
      'rentalDays': 'Rental Days',
      'place': 'Place',
      'provides': 'What amenities await you',
      'answer': 'Answer',
      'answerer': 'Answerer',
      'checkingComment': 'Comment is being checked',
      'comments': 'Ratings and reviews',
      'seeAll': 'See all',
      'bron': 'Call',
      'rate': 'Rate',
      'retry': 'Retry',
      'writeComment': 'Write a review...',
      'commentSaved': 'Comment saved',
      'userNotFound': 'User not found. Register please...',
      'acceptTerms': 'I accept the commenting rules',
      'deny': 'Cancel',
      'accept': 'Send',
      'apply': 'Accept',
      'profil': 'Profile',
      'language': 'Language',
      'myPosts': 'My houses',
      'myFavs': 'My favorites',
      'addedToFav': 'Added to favorites',
      'removedFromFav': 'Removed from favorites',
      'myComments': 'My Comments',
      'writtenToThem': 'My writings',
      'writtemToMe': 'Written to me',
      'contactMe': 'Contact',
      'guide': 'Guide',
      'expired': 'House expired, edit it!',
      'infos': 'Data',
      'services': 'Services',
      'delete': 'Delete',
      'remove': 'Remove',
      'uSureRemoveHouse': 'Do you want to remove the house',
      'uSureMoveUpHouse': 'Do you want to move forward the house',
      'edit': 'Edit',
      'editGuide': 'Making adjustments to your home. Adjustments can be made 2 times a day. You may have to wait a while for the fix to be verified by an administrator',
      'editWarning': 'Adjustments can be made 2 times a day - every 12 hours. You can make adjustment from: ',
      'moveForward': 'Move forward',
      'notMovedForward': 'Not moved forward. You can move this house forward from ',
      'minutes': 'minutes',
      'hours': 'hours',
      'days': 'days',
      'forwardGuide': 'Your house is moved up one time and placed among the new houses. If a new house is added, your house will move down again.',
      'login': 'Sign in',
      'loginFirst': 'In order to write review, login please',
      'logout': 'Logout',
      'reallyLogout': 'Are you sure you want to logout?',
      'reallyGoBack': 'Are you sure you want to go back?',
      'ifYouGoBack': 'If you go back from this page, all the info you\'ve inserted will cleared. Next time you will have to re-insert again',
      'username': 'Username',
      'phone': 'Phone',
      'email': 'Email',
      'passCode': 'Password',
      'reTypePass': 'Retype password',
      'forgottenPass': 'Forgot your password?',
      'register': 'Registration',
      'readAndAccept': 'I have read and accept the rules and conditions',
      'insertPhoeOTP': 'Enter the number sent to your phone number',
      'insertEmailOTP': 'Enter the number you received in your mail',
      'arrivalOtp': 'The number you received',
      'verify': 'VERIFY',
      'checkYourInternetAndRetry': 'Please, check your internet connection and try again',
      'noInternet': 'No internet',
      'notAccepted': 'Not accepted',
      'houseRejected': 'Your house not accepted',
      'rangeLimit': 'Only 2 month range acceptable',
      'sthWentWrong': 'Something went wrong, please try again later',
      'makeSure': 'Make sure you filled all the blanks',
      'notFoundInfo': 'Nothing was found for your search.',
      'inserPhoneWarning': 'Insert your phone!',
      'mustbe8Digit': 'Must be 8 digits',
      'insertPass': 'Enter password',
      'reInsertPass': 'Retype the password',
      'notMatch': 'Passwords not match',
      'insertUsername': 'Insert username',
      'insertEmail': 'Insert email',
      'wrongEmail': 'Wrong email',
      'fillAllBlanks': 'Fill in all the blanks!',
      'doneSuccessfully': 'Successfully completed!',
      'startWith6': 'Must start with 6 or 7',
      'workinOn': 'Working on.',
      'commentTerms': 'Commenting rules',
      'no': 'No',
      'yes': 'Yes',
      'houseMovedForward': 'House moved forward!',
      'dontPayForward':
          'When you rent an apartment, do not transfer partial or full payment in advance (over the phone, etc.) to anyone without seeing it. Just verify the authenticity by seeing the host yourself',
      'confirm': 'Confirm',
      'yourHousewillbeInvisible': 'If house is bronned, it will be disappeared from the home page',
      'yourHousewillbeVisible': 'Your house will be open for bronning on the home page',
      'isYourHBronned': 'Is your house bronned?',
      'sendEmptySms': 'send a blank sms',
      'bronned': 'Bronned',
      'phoneNumber': 'Phone number',
      'putted': 'Put',
      'enterThoughts': 'You can write your thoughts about the program',
      'removedFromHomepage': 'Removed from homepage',
      'pending': 'Pending',
      'deletedSuccessfully': 'Your house has been successfully deleted!',
      'houseEdited': 'Your location has been successfully modified!',
      'unbronned': 'Not bronned',
      'send': 'Send',
      'contactAdmin': 'Contact the administrator',
      'thenSendSMS': 'wait for some time after launching.',
      'inOrderVerify': 'To verify the phone number',
      'to': 'to',
      'bronCondition': 'House status: ',
      'unbronnedAndAppeared': 'Posted on home page. Not bronned',
      'bronnedAndDisappeared': 'Removed from homepage. Bronned',
      'expiredPleaseEdit': 'Your rental period has expired, fix it. Your house has been removed from the homepage',
      'choose': 'Choose',
    },
    'ru': {
      'kat23': 'изображение добавлено',
      'kat22': 'не выбрано',
      'kat21': 'LUXE apartments have a high chance of being sold quickly. LUXE-class houses will change their location during 3 days and differ in color and appearance.',
      'kat17': 'БЕСПЛАТНО',
      'kat18': 'Бесплатные и платные услуги',
      'kat19': 'Сделать дом ЛЮКСОМ',
      'kat20': 'Сделай это ЛЮКСОМ',
      'kat16': 'Мои объекты',
      'kat14': 'Отделение',
      'kat15': 'Основная информация',
      'kat13': 'КАТЕГОРИИ',
      'kat12': 'НЕДВИЖИМОСТЬ',
      'kat11': 'Поиск',
      'kat9': 'Посмотрите добавленные вами объекты недвижимости здесь!',
      'kat10': 'Рекламируйте свою недвижимость с помощью mekanly.com и зарабатывайте. Это просто',
      'kat8': 'Дата публикации',
      'kat1': 'Дома на продажу',
      'kat2': 'Дома в аренду',
      'kat3': 'Комнаты в аренду',
      'kat4': 'Офисы в аренду',
      'kat5': 'Коммерческая недвижимость в аренду',
      'kat6': 'Коммерческая недвижимость на продажу',
      'kat7': 'Другие свойства',
      'kat24': 'Чтобы узнать ваш пароль, позвоните администратору',
      'all': 'Все',
      'city': 'Город',
      'add': 'Добавить',
      'home': 'Главная',
      'avaza': 'Набережный',
      'mountain': 'Предгорья',
      'cottage': 'Коттедж',
      'plan': 'Плановый дом',
      'room': 'Комнат',
      'wifi': 'Wi-Fi',
      'shower': 'Баня',
      'kitchen': 'Кухня',
      'washer': 'Стиральная машина',
      'tv': 'Телевизор',
      'conditioner': 'Кондиционер',
      'ward': 'Мебель-шкаф',
      'bed': 'Кровать',
      'hot': 'Горячая вода',
      'fridge': 'Холодильник',
      'where': 'Где?',
      'pressAgain': 'Нажмите назад ещё раз для выход',
      'price': 'Цена',
      'minPrice': 'мин',
      'maxPrice': 'макс',
      'sort': 'Сортировка',
      'notSelected': 'Все',
      'cheapToExp': 'Цена по возрастанию',
      'expToCheap': 'Цена по убыванию',
      'location': 'Расположение',
      'roomCount': 'Количество комнат',
      'floorCount': 'Этаж',
      'guestCount': 'Количество гостей',
      'possibilities': 'Удобства',
      'filters': 'Фильтры',
      'whenTravel': 'Когда ваше путешествие?',
      'find': 'Поиск',
      'regions': 'Города',
      'allReg': 'Выбрать все',
      'addingHouse': 'Добавляем дом',
      'doUWantToAdd': 'Хотите опубликовать этот дом?',
      'doUWantToUpdate': 'Хотите обновить этот дом?',
      'pleaseWait': 'Пожалуйста, подождите немного...',
      'houseAddedAndSaved': 'Успешно сохранено. После проверки администратора уведомление будет видно всем пользователям.',
      'updatingHouse': 'Обновления дома...',
      'updateHouse': 'Обновить дом',
      'adminChecking': 'Администратора проверяет ваша уведомления',
      'editComment': 'Изменить',
      'houseName': 'Название',
      'nameHint': 'Введите название',
      'category': 'Категория',
      'whenJourney': 'В какие дни мы принимаем гостей?',
      'limitImages': 'Можно выбрать максимум 10 изображений',
      'rules': 'Правила дома:',
      'enterTime': 'Время прибытия',
      'leaveTime': 'Время выезд до',
      'any': 'любой',
      'description': 'Полное имя, функция, статус и т. д.',
      'categType': 'Категория',
      'mainImage': 'ГЛАВНОЕ ФОТО',
      'insertImage': 'Выберите фото',
      'dailyPrice': 'Цена: ',
      'yourPhone': 'Номер тел:',
      'terms': 'Конфиденциальность',
      'canComment': 'Пользователи могут писать отзывы',
      'loginToComment': 'Вы должны войти, чтобы оставить комментарий',
      'habarnama': 'Уведомление',
      'addTheHouse': 'Добавить дом',
      'rating': 'Рейтинг:',
      'allInfo': 'Все информация:',
      'rentalDays': 'Дни аренды',
      'place': 'Место',
      'provides': 'Какие удобста вас ждут',
      'answer': 'Ответить',
      'answerer': 'Отвечающий',
      'checkingComment': 'Коммент проверяется',
      'comments': 'Оценки и отзывы',
      'seeAll': 'Показать все',
      'bron': 'Позвонить ',
      'rate': 'Оценить',
      'retry': 'Повторить',
      'writeComment': 'Напишите отзыв...',
      'commentSaved': 'Ваш отзыв сохранено',
      'userNotFound': 'Пользователь не найден. Зарегистируйтесь...',
      'acceptTerms': 'Я принимаю правила отзыва',
      'deny': 'Отмена ',
      'accept': 'Отправить',
      'apply': 'Принять ',
      'profil': 'Профиль',
      'language': 'Язык',
      'myPosts': 'Мои дома',
      'myFavs': 'Мои избранные',
      'addedToFav': 'Добавлено в избранное',
      'removedFromFav': 'Удалено из избранного',
      'myComments': 'Мои комментарии',
      'writtenToThem': 'Мои отзывы',
      'writtemToMe': 'Мне написали',
      'contactMe': 'Контакт ',
      'guide': 'Руководство',
      'expired': 'Срок действия дома истек, отредактируйте его!',
      'infos': 'Данные',
      'services': 'Услуги',
      'delete': 'Удалить',
      'remove': 'Удалить',
      'uSureRemoveHouse': 'Вы действительно хотите удалить дом?',
      'uSureMoveUpHouse': 'Вы действительно хотите поднять наверх этот дом?',
      'edit': 'Редактировать',
      'editGuide': 'Внесение изменений в свой дом. Изменения можно вносить 2 раза в день. Возможно, вам придется подождать некоторое время, пока администратор проверит исправление.',
      'editWarning': 'Изменения можно производить два раза в день, то есть каждые 12 часов. Ниже указано, когда вы можете внести следующую поправку: ',
      'moveForward': 'Поднять наверх',
      'notMovedForward': 'Поднять наверх неуспешно. Вы сможете переместить этот дом снова через ',
      'minutes': 'минут',
      'hours': 'часа',
      'days': 'дня',
      'forwardGuide': 'Ваш дом один раз перемещается вверх и помещается среди новых домов. Если будет добавлен новый дом, ваш дом снова сместится.',
      'login': 'Войти в систему',
      'loginFirst': 'Чтобы написать отзыв, пожалуйста, авторизуйтесь',
      'logout': 'Выйти ',
      'reallyLogout': 'Вы действительно хотите выйти из системы?',
      'reallyGoBack': 'Вы действительно хотите выйти?',
      'ifYouGoBack': 'Вы действительно хотите выйти?',
      'username': 'Имя пользователя',
      'phoneNumber': 'Ваш телефон',
      'phone': 'Телефон',
      'email': 'Электронная почта',
      'passCode': 'Пароль',
      'reTypePass': 'Введите пароль еще раз',
      'forgottenPass': 'Забыли пароль?',
      'register': 'Регистрация',
      'readAndAccept': 'Я ознакомлен с правилами mekanly.com',
      'insertPhoeOTP': 'Введите код, отправленный на ваш номер телефона',
      'insertEmailOTP': 'Введите код, который вы получили на почту',
      'arrivalOtp': 'Номер, который вы получили',
      'verify': 'ПОДТВЕРЖДЕНИЕ',
      'checkYourInternetAndRetry': 'Нет подключени к сети, попробуйте позже',
      'noInternet': 'Нет подключени к сети',
      'notAccepted': 'Не активный',
      'houseRejected': 'Ваш дом отклонен',
      'rangeLimit': 'Можно выбрать только 2 месяца',
      'sthWentWrong': 'Что то пошло не так. Попробуйте позже',
      'makeSure': 'Убедитесь, что вы заполнили все поля',
      'notFoundInfo': 'По вашему запросу ничего не найдено.',
      'inserPhoneWarning': 'Введите свой номер телефона!',
      'mustbe8Digit': 'Должно быть 8 цифр',
      'insertPass': 'Введите пароль',
      'reInsertPass': 'Повторите пароль',
      'notMatch': 'Пароли не совпадают',
      'insertUsername': 'Введите имя пользователя',
      'insertEmail': 'Вставить адрес электронной почты',
      'wrongEmail': 'Неправильный адрес электронной почты',
      'fillAllBlanks': 'Заполните все пробелы!',
      'doneSuccessfully': 'Сделано успешно!',
      'startWith6': 'должно начинаться с 6 или 7',
      'workinOn': 'Выполняется.',
      'commentTerms': 'Условия комментирование',
      'no': 'Нет',
      'yes': 'Да',
      'houseMovedForward': 'Дом переехал вперед',
      'dontPayForward': 'Снимая квартиру, не передавайте никому частичную или полную предоплату (по телефону и т.п.) не видя ее. Просто проверьте подлинность, увидев хозяина самостоятельно.',
      'confirm': 'Подтверждение',
      'yourHousewillbeInvisible': 'Если ваш дом забронирован, он будет удален с главной страницы.',
      'yourHousewillbeVisible': 'Ваш дом будет открыт для бронирования на главной странице.',
      'isYourHBronned': 'Ваш дом забронирована?',
      'sendEmptySms': 'отправить пустое смс',
      'bronned': 'Забронировано',
      'putted': 'Установлен',
      'enterThoughts': 'Вы можете написать свое мнение о программе',
      'removedFromHomepage': 'Удалено с главной страницы',
      'pending': 'Рассматриваемый',
      'deletedSuccessfully': 'Ваш дом успешно удален!',
      'houseEdited': 'Ваш дом успешно изменено!',
      'unbronned': 'Не забронирован',
      'send': 'Отправить',
      'contactAdmin': 'Свяжитесь с администратором',
      'thenSendSMS': 'отправьте пустое смс на номер. Подождите некоторое время после запуска.',
      'inOrderVerify': 'Чтобы подтвердить номер телефона',
      'to': 'на',
      'bronCondition': 'Статус дома: ',
      'unbronnedAndAppeared': 'Размещено на главной странице. Не забронирован',
      'bronnedAndDisappeared': 'Удален с главной страницы. Забронировано',
      'expiredPleaseEdit': 'Срок аренды истек, исправьте это. Ваш дом был удален с главной страницы',
      'choose': 'выбрать',
    },
  };

  static List<String> languages() => _localizedValues.keys.toList();
  String get kat1 => _localizedValues[locale.languageCode]!['kat1']!;
  String get kat2 => _localizedValues[locale.languageCode]!['kat2']!;
  String get kat3 => _localizedValues[locale.languageCode]!['kat3']!;
  String get kat4 => _localizedValues[locale.languageCode]!['kat4']!;
  String get kat5 => _localizedValues[locale.languageCode]!['kat5']!;
  String get kat6 => _localizedValues[locale.languageCode]!['kat6']!;
  String get kat7 => _localizedValues[locale.languageCode]!['kat7']!;
  String get kat8 => _localizedValues[locale.languageCode]!['kat8']!;
  String get kat9 => _localizedValues[locale.languageCode]!['kat9']!;
  String get kat10 => _localizedValues[locale.languageCode]!['kat10']!;
  String get kat11 => _localizedValues[locale.languageCode]!['kat11']!;
  String get kat12 => _localizedValues[locale.languageCode]!['kat12']!;
  String get kat13 => _localizedValues[locale.languageCode]!['kat13']!;
  String get kat14 => _localizedValues[locale.languageCode]!['kat14']!;
  String get kat15 => _localizedValues[locale.languageCode]!['kat15']!;
  String get kat16 => _localizedValues[locale.languageCode]!['kat16']!;
  String get kat17 => _localizedValues[locale.languageCode]!['kat17']!;
  String get kat18 => _localizedValues[locale.languageCode]!['kat18']!;
  String get kat19 => _localizedValues[locale.languageCode]!['kat19']!;
  String get kat20 => _localizedValues[locale.languageCode]!['kat20']!;
  String get kat21 => _localizedValues[locale.languageCode]!['kat21']!;
  String get kat22 => _localizedValues[locale.languageCode]!['kat22']!;
  String get kat23 => _localizedValues[locale.languageCode]!['kat23']!;
  String get kat24 => _localizedValues[locale.languageCode]!['kat24']!;

  String get all => _localizedValues[locale.languageCode]!['all']!;
  String get city => _localizedValues[locale.languageCode]!['city']!;
  String get add => _localizedValues[locale.languageCode]!['add']!;
  String get home => _localizedValues[locale.languageCode]!['home']!;
  String get avaza => _localizedValues[locale.languageCode]!['avaza']!;
  String get mountain => _localizedValues[locale.languageCode]!['mountain']!;
  String get cottage => _localizedValues[locale.languageCode]!['cottage']!;
  String get plan => _localizedValues[locale.languageCode]!['plan']!;
  String get room => _localizedValues[locale.languageCode]!['room']!;
  String get wifi => _localizedValues[locale.languageCode]!['wifi']!;
  String get shower => _localizedValues[locale.languageCode]!['shower']!;
  String get kitchen => _localizedValues[locale.languageCode]!['kitchen']!;
  String get washer => _localizedValues[locale.languageCode]!['washer']!;
  String get tv => _localizedValues[locale.languageCode]!['tv']!;
  String get conditioner => _localizedValues[locale.languageCode]!['conditioner']!;
  String get ward => _localizedValues[locale.languageCode]!['ward']!;
  String get bed => _localizedValues[locale.languageCode]!['bed']!;
  String get hot => _localizedValues[locale.languageCode]!['hot']!;
  String get fridge => _localizedValues[locale.languageCode]!['fridge']!;
  String get where => _localizedValues[locale.languageCode]!['where']!;
  String get pressAgain => _localizedValues[locale.languageCode]!['pressAgain']!;
  String get price => _localizedValues[locale.languageCode]!['price']!;
  String get minPrice => _localizedValues[locale.languageCode]!['minPrice']!;
  String get maxPrice => _localizedValues[locale.languageCode]!['maxPrice']!;
  String get sort => _localizedValues[locale.languageCode]!['sort']!;
  String get notSelected => _localizedValues[locale.languageCode]!['notSelected']!;
  String get cheapToExp => _localizedValues[locale.languageCode]!['cheapToExp']!;
  String get expToCheap => _localizedValues[locale.languageCode]!['expToCheap']!;
  String get location => _localizedValues[locale.languageCode]!['location']!;
  String get roomCount => _localizedValues[locale.languageCode]!['roomCount']!;
  String get floorCount => _localizedValues[locale.languageCode]!['floorCount']!;
  String get guestCount => _localizedValues[locale.languageCode]!['guestCount']!;
  String get possibilities => _localizedValues[locale.languageCode]!['possibilities']!;
  String get filters => _localizedValues[locale.languageCode]!['filters']!;
  String get whenTravel => _localizedValues[locale.languageCode]!['whenTravel']!;
  String get find => _localizedValues[locale.languageCode]!['find']!;
  String get regions => _localizedValues[locale.languageCode]!['regions']!;
  String get allReg => _localizedValues[locale.languageCode]!['allReg']!;
  String get addingHouse => _localizedValues[locale.languageCode]!['addingHouse']!;
  String get doUWantToAdd => _localizedValues[locale.languageCode]!['doUWantToAdd']!;
  String get doUWantToUpdate => _localizedValues[locale.languageCode]!['doUWantToUpdate']!;
  String get pleaseWait => _localizedValues[locale.languageCode]!['pleaseWait']!;
  String get houseAddedAndSaved => _localizedValues[locale.languageCode]!['houseAddedAndSaved']!;
  String get updatingHouse => _localizedValues[locale.languageCode]!['updatingHouse']!;
  String get updateHouse => _localizedValues[locale.languageCode]!['updateHouse']!;
  String get adminChecking => _localizedValues[locale.languageCode]!['adminChecking']!;
  String get editComment => _localizedValues[locale.languageCode]!['editComment']!;
  String get houseName => _localizedValues[locale.languageCode]!['houseName']!;
  String get nameHint => _localizedValues[locale.languageCode]!['nameHint']!;
  String get category => _localizedValues[locale.languageCode]!['category']!;
  String get whenJourney => _localizedValues[locale.languageCode]!['whenJourney']!;
  String get limitImages => _localizedValues[locale.languageCode]!['limitImages']!;
  String get rules => _localizedValues[locale.languageCode]!['rules']!;
  String get enterTime => _localizedValues[locale.languageCode]!['enterTime']!;
  String get leaveTime => _localizedValues[locale.languageCode]!['leaveTime']!;
  String get any => _localizedValues[locale.languageCode]!['any']!;
  String get description => _localizedValues[locale.languageCode]!['description']!;
  String get categType => _localizedValues[locale.languageCode]!['categType']!;
  String get mainImage => _localizedValues[locale.languageCode]!['mainImage']!;
  String get insertImage => _localizedValues[locale.languageCode]!['insertImage']!;
  String get dailyPrice => _localizedValues[locale.languageCode]!['dailyPrice']!;
  String get yourPhone => _localizedValues[locale.languageCode]!['yourPhone']!;
  String get terms => _localizedValues[locale.languageCode]!['terms']!;
  String get canComment => _localizedValues[locale.languageCode]!['canComment']!;
  String get loginToComment => _localizedValues[locale.languageCode]!['loginToComment']!;
  String get habarnama => _localizedValues[locale.languageCode]!['habarnama']!;
  String get addTheHouse => _localizedValues[locale.languageCode]!['addTheHouse']!;
  String get rating => _localizedValues[locale.languageCode]!['rating']!;
  String get allInfo => _localizedValues[locale.languageCode]!['allInfo']!;
  String get rentalDays => _localizedValues[locale.languageCode]!['rentalDays']!;
  String get place => _localizedValues[locale.languageCode]!['place']!;
  String get provides => _localizedValues[locale.languageCode]!['provides']!;
  String get answer => _localizedValues[locale.languageCode]!['answer']!;
  String get answerer => _localizedValues[locale.languageCode]!['answerer']!;
  String get checkingComment => _localizedValues[locale.languageCode]!['checkingComment']!;
  String get comments => _localizedValues[locale.languageCode]!['comments']!;
  String get seeAll => _localizedValues[locale.languageCode]!['seeAll']!;
  String get bron => _localizedValues[locale.languageCode]!['bron']!;
  String get rate => _localizedValues[locale.languageCode]!['rate']!;
  String get retry => _localizedValues[locale.languageCode]!['retry']!;
  String get writeComment => _localizedValues[locale.languageCode]!['writeComment']!;
  String get commentSaved => _localizedValues[locale.languageCode]!['commentSaved']!;
  String get userNotFound => _localizedValues[locale.languageCode]!['userNotFound']!;
  String get acceptTerms => _localizedValues[locale.languageCode]!['acceptTerms']!;
  String get deny => _localizedValues[locale.languageCode]!['deny']!;
  String get accept => _localizedValues[locale.languageCode]!['accept']!;
  String get apply => _localizedValues[locale.languageCode]!['apply']!;
  String get profil => _localizedValues[locale.languageCode]!['profil']!;
  String get language => _localizedValues[locale.languageCode]!['language']!;
  String get myPosts => _localizedValues[locale.languageCode]!['myPosts']!;
  String get myFavs => _localizedValues[locale.languageCode]!['myFavs']!;
  String get addedToFav => _localizedValues[locale.languageCode]!['addedToFav']!;
  String get removedFromFav => _localizedValues[locale.languageCode]!['removedFromFav']!;
  String get myComments => _localizedValues[locale.languageCode]!['myComments']!;
  String get writtenToThem => _localizedValues[locale.languageCode]!['writtenToThem']!;
  String get writtemToMe => _localizedValues[locale.languageCode]!['writtemToMe']!;
  String get contactMe => _localizedValues[locale.languageCode]!['contactMe']!;
  String get guide => _localizedValues[locale.languageCode]!['guide']!;
  String get expired => _localizedValues[locale.languageCode]!['expired']!;
  String get infos => _localizedValues[locale.languageCode]!['infos']!;
  String get services => _localizedValues[locale.languageCode]!['services']!;
  String get delete => _localizedValues[locale.languageCode]!['delete']!;
  String get remove => _localizedValues[locale.languageCode]!['remove']!;
  String get uSureRemoveHouse => _localizedValues[locale.languageCode]!['uSureRemoveHouse']!;
  String get uSureMoveUpHouse => _localizedValues[locale.languageCode]!['uSureMoveUpHouse']!;
  String get edit => _localizedValues[locale.languageCode]!['edit']!;
  String get editGuide => _localizedValues[locale.languageCode]!['editGuide']!;
  String get editWarning => _localizedValues[locale.languageCode]!['editWarning']!;
  String get moveForward => _localizedValues[locale.languageCode]!['moveForward']!;
  String get notMovedForward => _localizedValues[locale.languageCode]!['notMovedForward']!;
  String get minutes => _localizedValues[locale.languageCode]!['minutes']!;
  String get hours => _localizedValues[locale.languageCode]!['hours']!;
  String get days => _localizedValues[locale.languageCode]!['days']!;
  String get forwardGuide => _localizedValues[locale.languageCode]!['forwardGuide']!;
  String get login => _localizedValues[locale.languageCode]!['login']!;
  String get loginFirst => _localizedValues[locale.languageCode]!['loginFirst']!;
  String get logout => _localizedValues[locale.languageCode]!['logout']!;
  String get reallyLogout => _localizedValues[locale.languageCode]!['reallyLogout']!;
  String get reallyGoBack => _localizedValues[locale.languageCode]!['reallyGoBack']!;
  String get ifYouGoBack => _localizedValues[locale.languageCode]!['ifYouGoBack']!;
  String get username => _localizedValues[locale.languageCode]!['username']!;
  String get phoneNumber => _localizedValues[locale.languageCode]!['phoneNumber']!;
  String get phone => _localizedValues[locale.languageCode]!['phone']!;
  String get email => _localizedValues[locale.languageCode]!['email']!;
  String get passCode => _localizedValues[locale.languageCode]!['passCode']!;
  String get reTypePass => _localizedValues[locale.languageCode]!['reTypePass']!;
  String get forgottenPass => _localizedValues[locale.languageCode]!['forgottenPass']!;
  String get register => _localizedValues[locale.languageCode]!['register']!;
  String get readAndAccept => _localizedValues[locale.languageCode]!['readAndAccept']!;
  String get insertPhoeOTP => _localizedValues[locale.languageCode]!['insertPhoeOTP']!;
  String get insertEmailOTP => _localizedValues[locale.languageCode]!['insertEmailOTP']!;
  String get arrivalOtp => _localizedValues[locale.languageCode]!['arrivalOtp']!;
  String get verify => _localizedValues[locale.languageCode]!['verify']!;
  String get checkYourInternetRetry => _localizedValues[locale.languageCode]!['checkYourInternetAndRetry']!;
  String get noInternet => _localizedValues[locale.languageCode]!['noInternet']!;
  String get notAccepted => _localizedValues[locale.languageCode]!['notAccepted']!;
  String get houseRejected => _localizedValues[locale.languageCode]!['houseRejected']!;
  String get rangeLimit => _localizedValues[locale.languageCode]!['rangeLimit']!;
  String get sthWentWrong => _localizedValues[locale.languageCode]!['sthWentWrong']!;
  String get makeSure => _localizedValues[locale.languageCode]!['makeSure']!;
  String get notFoundInfo => _localizedValues[locale.languageCode]!['notFoundInfo']!;
  String get inserPhoneWarning => _localizedValues[locale.languageCode]!['inserPhoneWarning']!;
  String get mustbe8Digit => _localizedValues[locale.languageCode]!['mustbe8Digit']!;
  String get insertPass => _localizedValues[locale.languageCode]!['insertPass']!;
  String get reInsertPass => _localizedValues[locale.languageCode]!['reInsertPass']!;
  String get notMatch => _localizedValues[locale.languageCode]!['notMatch']!;
  String get insertUsername => _localizedValues[locale.languageCode]!['insertUsername']!;
  String get insertEmail => _localizedValues[locale.languageCode]!['insertEmail']!;
  String get wrongEmail => _localizedValues[locale.languageCode]!['wrongEmail']!;
  String get fillAllBlanks => _localizedValues[locale.languageCode]!['fillAllBlanks']!;
  String get doneSuccessfully => _localizedValues[locale.languageCode]!['doneSuccessfully']!;
  String get startWith6 => _localizedValues[locale.languageCode]!['startWith6']!;
  String get workinOn => _localizedValues[locale.languageCode]!['workinOn']!;
  String get commentTerms => _localizedValues[locale.languageCode]!['commentTerms']!;
  String get no => _localizedValues[locale.languageCode]!['no']!;
  String get yes => _localizedValues[locale.languageCode]!['yes']!;
  String get houseMovedForward => _localizedValues[locale.languageCode]!['houseMovedForward']!;
  String get dontPayForward => _localizedValues[locale.languageCode]!['dontPayForward']!;
  String get confirm => _localizedValues[locale.languageCode]!['confirm']!;
  String get yourHousewillbeInvisible => _localizedValues[locale.languageCode]!['yourHousewillbeInvisible']!;
  String get yourHousewillbeVisible => _localizedValues[locale.languageCode]!['yourHousewillbeVisible']!;
  String get isYourHBronned => _localizedValues[locale.languageCode]!['isYourHBronned']!;
  String get sendEmptySms => _localizedValues[locale.languageCode]!['sendEmptySms']!;
  String get bronned => _localizedValues[locale.languageCode]!['bronned']!;
  String get putted => _localizedValues[locale.languageCode]!['putted']!;
  String get enterThoughts => _localizedValues[locale.languageCode]!['enterThoughts']!;
  String get removedFromHomepage => _localizedValues[locale.languageCode]!['removedFromHomepage']!;
  String get pending => _localizedValues[locale.languageCode]!['pending']!;
  String get deletedSuccessfully => _localizedValues[locale.languageCode]!['deletedSuccessfully']!;
  String get houseEdited => _localizedValues[locale.languageCode]!['houseEdited']!;
  String get unbronned => _localizedValues[locale.languageCode]!['unbronned']!;
  String get send => _localizedValues[locale.languageCode]!['send']!;
  String get contactAdmin => _localizedValues[locale.languageCode]!['contactAdmin']!;
  String get thenSendSMS => _localizedValues[locale.languageCode]!['thenSendSMS']!;
  String get inOrderVerify => _localizedValues[locale.languageCode]!['inOrderVerify']!;
  String get to => _localizedValues[locale.languageCode]!['to']!;
  String get bronCondition => _localizedValues[locale.languageCode]!['bronCondition']!;
  String get unbronnedAndAppeared => _localizedValues[locale.languageCode]!['unbronnedAndAppeared']!;
  String get bronnedAndDisappeared => _localizedValues[locale.languageCode]!['bronnedAndDisappeared']!;
  String get expiredPleaseEdit => _localizedValues[locale.languageCode]!['expiredPleaseEdit']!;
  String get choose => _localizedValues[locale.languageCode]!['choose']!;
}
