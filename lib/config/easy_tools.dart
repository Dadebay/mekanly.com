// ignore_for_file: deprecated_member_use

import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mekanly_com/localization/locals.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/category/category_model.dart';
import '../ui/style/style.dart';
import '/ui/style/app_sizes.dart';
import 'config.dart';

String formatDuration(Duration duration, BuildContext context) {
  var locals = Locals.of(context);

  int days = duration.inDays;
  int hours = duration.inHours % 24;
  int minutes = duration.inMinutes % 60;

  String daysStr = days > 0 ? "$days ${locals.days}" : "";
  String hoursStr = hours > 0 ? "$hours ${locals.hours}" : "";
  String minutesStr = minutes > 0 ? "$minutes ${locals.minutes}" : "";

  List<String> parts = [daysStr, hoursStr, minutesStr].where((part) => part.isNotEmpty).toList();

  if (parts.isEmpty) {
    return "";
  }

  return parts.join(", ");
}

class ResBody {
  static gett(Map? data, {bool out = false}) {
    return jsonEncode({...data ?? {}});
  }
}

class GoBack extends StatelessWidget {
  const GoBack({
    super.key,
    this.color,
  });
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_rounded),
      style: IconButton.styleFrom(backgroundColor: AppColors.white),
      color: AppColors.mainTextDark,
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}

Future<void> printSharedPreferencesData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  Map<String, dynamic> allData = prefs.getKeys().fold<Map<String, dynamic>>(
    {},
    (previousValue, key) => {
      ...previousValue,
      key: prefs.get(key),
    },
  );

  logger("before: $allData");
  prefs.clear();
}

TimeOfDay stringToTimeofDay(String timeString) {
  List<String> timeParts = timeString.split(":");
  int hours = int.parse(timeParts[0]);
  int minutes = int.parse(timeParts[1]);
  return TimeOfDay(hour: hours, minute: minutes);
}

class Mekanly extends StatelessWidget {
  const Mekanly({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.pix45,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.pix12, vertical: 6),
        child: Image.asset('assets/images/mekanly.png'),
      ),
    );
  }
}

String mapToString(Map<String, dynamic> data) {
  final buffer = StringBuffer();
  data.forEach((key, value) {
    buffer.write('$key: $value\n');
  });
  return buffer.toString();
}

go(BuildContext context, Widget page) {
  return Navigator.of(context, rootNavigator: true).push(
    MaterialPageRoute(
      builder: (_) {
        return page;
      },
    ),
  );
}

List<Widget> indicators(imagesLength, currentIndex, BuildContext context) {
  return List<Widget>.generate(imagesLength, (index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.linearToEaseOut,
      margin: const EdgeInsets.all(AppSizes.pix2),
      width: AppSizes.pix6,
      height: AppSizes.pix6,
      decoration: BoxDecoration(
        color: currentIndex == index ? AppColors.black : AppColors.background,
        shape: BoxShape.circle,
      ),
    );
  });
}

bool isValidPhone(String value) {
  if (value.startsWith('61') || value.startsWith('62') || value.startsWith('63') || value.startsWith('64') || value.startsWith('65') || value.startsWith('71')) {
    return true;
  } else {
    return false;
  }
}

void errorToast(String msg, {Toast? lenth}) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: lenth ?? Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: AppColors.red,
    textColor: AppColors.mainText,
    fontSize: AppSizes.pix16,
  );
}

void successToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: AppColors.yellow,
    textColor: AppColors.statusBar,
  );
}

class SvgAsset extends StatelessWidget {
  const SvgAsset(
    this.svg,
    this.c, {
    this.size,
    super.key,
  });
  final String svg;
  final Color? c;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/$svg.svg',
      height: size ?? AppSizes.pix24,
      width: size ?? AppSizes.pix24,
      color: c,
    );
  }
}

class Pad extends StatelessWidget {
  const Pad({super.key, this.h, this.v, required this.child});

  final double? h;
  final double? v;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: h ?? AppSizes.pix10, vertical: v ?? 0),
      child: child,
    );
  }
}

bool isExpired(DateTime time) {
  final currentTime = DateTime.now();
  return time.isBefore(currentTime);
}

String toProperTime(int number) {
  return number < 10 ? "0$number" : number.toString();
}

String toTime(DateTime? dateTime) {
  String formattedDate;
  if (dateTime != null) {
    String day = toProperTime(dateTime.day);
    String month = toProperTime(dateTime.month);
    String hour = toProperTime(dateTime.hour);
    String minute = toProperTime(dateTime.minute);
    formattedDate = "$day.$month.${dateTime.year},  $hour:$minute";
    return formattedDate;
  } else {
    return '';
  }
}

String toSendDate(DateTime? dateTime) {
  String formattedDate = "${dateTime?.year}-${dateTime?.month}-${dateTime?.day}";
  return formattedDate;
}

String star(double total, House house) {
  if (house.comments.isNotEmpty) {
    for (var element in house.comments) {
      total += double.parse(element.star ?? "3.0");
    }
    return (total / house.comments.length).toStringAsFixed(1);
  } else {
    return '1.0';
  }
}
