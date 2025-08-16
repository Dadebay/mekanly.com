import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../core/components/app_text.dart';
import '../features/house_detail/recoman/recomendation_biznes.dart';
import '../localization/extensions.dart';
import 'toast.dart';

class HelpersCopy {
  HelpersCopy._();

  static Color hexToColor(String? hexString) {
    if (hexString == null) {
      return Colors.transparent;
    }
    // Remove the hash symbol if present
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

// const _fetchDuration = Duration(milliseconds: 100);
  // static EventTransformer<T> fetchDroppable<T>({Duration? duration}) {
  //   return (events, mapper) {
  //     return droppable<T>()
  //         .call(events.throttle(duration ?? _fetchListDuration), mapper);
  //   };
  // }

  // static EventTransformer<Event> debounceEffect<Event>({Duration? duration}) {
  //   return (events, mapper) =>
  //       events.debounce(duration ?? _duration).switchMap(mapper);
  // }

  static Future<void> loadImage(ImageProvider provider) {
    final config = ImageConfiguration(
      bundle: rootBundle,
      devicePixelRatio: 1,
      platform: defaultTargetPlatform,
    );
    final Completer<void> completer = Completer();
    final ImageStream stream = provider.resolve(config);

    late final ImageStreamListener listener;

    listener = ImageStreamListener((ImageInfo image, bool sync) {
      debugPrint('Image ${image.debugLabel} finished loading');
      completer.complete();
      stream.removeListener(listener);
    }, onError: (dynamic exception, StackTrace? stackTrace) {
      completer.complete();
      stream.removeListener(listener);
      FlutterError.reportError(FlutterErrorDetails(
        context: ErrorDescription('image failed to load'),
        library: 'image resource service',
        exception: exception.toString(),
        stack: stackTrace,
        silent: true,
      ));
    });

    stream.addListener(listener);
    return completer.future;
  }

  /// Formats a `DateTime` into "MM/DD/YYYY".
  static String formatDate(DateTime? date, {String separator = '.'}) {
    if (date == null) return 'Unknown date';
    return '${date.day.toString().padLeft(2, '0')}$separator'
        '${date.month.toString().padLeft(2, '0')}$separator'
        '${date.year}';
  }

  static void showToastCopyy(BuildContext context, String descriptionCopied) {
    ToastUtil.show(
      context,
      ToastDecorator(
        widget: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 14.w,
              width: 14.w,
            ),
            8.boxW,
            AppText.s10w400LbS(
              descriptionCopied,
              color: ColorName.white,
            ),
          ],
        ),
        backgroundColor: ColorName.addressDate,
      ),
      duration: 4,
    );
  }
}

extension ListUpdate<T> on List<T> {
  List<T> update(int pos, T t) {
    final list = <T>[]..add(t);
    replaceRange(pos, pos + 1, list);
    return this;
  }
}
