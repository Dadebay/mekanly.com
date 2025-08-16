import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountDownWidget extends StatefulWidget {
  const CountDownWidget({
    super.key,
    required this.callback,
    required this.secondsToAwait,
    required this.text,
  });
  final void Function() callback;
  final int secondsToAwait;
  final String text;

  @override
  State<CountDownWidget> createState() => _CountDownWidgetState();
}

class _CountDownWidgetState extends State<CountDownWidget> {
  int secondsToAwait = 0;
  String _format(Duration d) =>
      '${d.inMinutes.remainder(60).toString().padLeft(2, '0')}:${d.inSeconds.remainder(60).toString().padLeft(2, '0')}';

  @override
  void initState() {
    super.initState();
    secondsToAwait = widget.secondsToAwait;
  }

  @override
  void didUpdateWidget(covariant CountDownWidget oldWidget) {
    if (oldWidget.secondsToAwait != widget.secondsToAwait) {
      setState(() {
        secondsToAwait = widget.secondsToAwait;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<Duration>(
      duration: Duration(seconds: secondsToAwait),
      tween: Tween(
        begin: Duration(seconds: secondsToAwait),
        end: Duration.zero,
      ),
      onEnd: widget.callback,
      builder: (BuildContext context, Duration value, Widget? child) {
        return Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: _format(value),
              ),
            ],
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          textAlign: TextAlign.center,
        );
      },
    );
  }
}
