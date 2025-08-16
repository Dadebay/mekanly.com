import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/components/app_text.dart';
import '../../../localization/extensions.dart';
import '../../../product/constants/constants.dart';
import '../../../utils/extensions.dart';

class AreaSliderWidget extends StatefulWidget {
  const AreaSliderWidget({
    super.key,
    required this.onChanged,
    required this.rangeValues,
    required this.initValues,
  });

  final ValueChanged<RangeValues> onChanged;
  final RangeValues rangeValues;
  final RangeValues initValues;

  @override
  State<AreaSliderWidget> createState() => _AreaSliderWidgetState();
}

class _AreaSliderWidgetState extends State<AreaSliderWidget> {
  late RangeValues _currentValues;
  late TextEditingController _minController;
  late TextEditingController _maxController;

  @override
  void initState() {
    super.initState();
    _currentValues = widget.rangeValues;
    _minController =
        TextEditingController(text: '${_currentValues.start.toInt()}');
    _maxController =
        TextEditingController(text: '${_currentValues.end.toInt()}');
  }

  @override
  void dispose() {
    _minController.dispose();
    _maxController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16).w,
      child: Column(
        children: [
          // Title
          AppText.s14w400BdM(
            context.translation.total_area,
            fontFamily: StringConstants.roboto,
            fontSize: 15.sp,
          ),
          12.boxH,

          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              rangeThumbShape: const _CustomRangeSliderThumbShape(
                borderWidth: 3,
                borderColor: Color.fromARGB(255, 58, 139, 207),
                fillColor: Color.fromARGB(255, 210, 241, 255),
                enabledThumbRadius: 12,
              ),
            ),
            child: RangeSlider(
              values: _currentValues,
              min: widget.initValues.start,
              max: widget.initValues.end,
              divisions:
                  (widget.initValues.end - widget.initValues.start).toInt(),
              labels: RangeLabels(
                '${_currentValues.start.toInt()} m²',
                _currentValues.end.toInt() >= widget.initValues.end
                    ? '${widget.initValues.end.toInt()} +m²'
                    : '${_currentValues.end.toInt()} m²',
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentValues = values;
                  _minController.text = '${values.start.toInt()}';
                  _maxController.text = '${values.end.toInt()}';
                });
                widget.onChanged(values);
              },
              activeColor: const Color.fromARGB(255, 58, 139, 207),
              inactiveColor: const Color.fromARGB(255, 210, 241, 255),
              overlayColor: MaterialStateProperty.all(
                  const Color(0xFF3A8BCF).withOpacity(0.2)),
            ),
          ),
          12.boxH,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 120.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.translation.min,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xff6A6A6A),
                      ),
                    ),
                    4.boxH,
                    SizedBox(
                      height: 40.h,
                      child: Row(
                        children: [
                          Expanded(
                              child: Theme(
                            data: Theme.of(context).copyWith(
                              textSelectionTheme: const TextSelectionThemeData(
                                selectionColor: Color(0x553A8BCF),
                                selectionHandleColor: Color(0xFF3A8BCF),
                              ),
                            ),
                            child: TextField(
                              controller: _minController,
                              keyboardType: TextInputType.number,
                              cursorColor: const Color(0xFF3A8BCF),
                              decoration: const InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 12),
                                suffixText: 'm²',
                                suffixStyle: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 34, 34, 34),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF3A8BCF), width: 1),
                                ),
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 1),
                                ),
                                isCollapsed: true,
                              ),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color.fromARGB(255, 34, 34, 34),
                                fontWeight: FontWeight.w500,
                              ),
                              onChanged: (value) {
                                final min = double.tryParse(value) ??
                                    _currentValues.start;
                                if (min >= widget.initValues.start &&
                                    min < _currentValues.end) {
                                  setState(() {
                                    _currentValues =
                                        RangeValues(min, _currentValues.end);
                                    _maxController.text =
                                        '${_currentValues.end.toInt()}';
                                  });
                                  widget.onChanged(_currentValues);
                                }
                              },
                            ),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.translation.max,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xff6A6A6A),
                      ),
                    ),
                    4.boxH,
                    SizedBox(
                      height: 40.h,
                      child: Row(
                        children: [
                          Expanded(
                              child: Theme(
                            data: Theme.of(context).copyWith(
                              textSelectionTheme: const TextSelectionThemeData(
                                selectionColor: Color(0x553A8BCF),
                                selectionHandleColor: Color(0xFF3A8BCF),
                              ),
                            ),
                            child: TextField(
                              controller: _maxController,
                              keyboardType: TextInputType.number,
                              cursorColor: const Color(0xFF3A8BCF),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 12),
                                isCollapsed: true,
                                suffixText: 'm²',
                                suffixStyle: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 34, 34, 34),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF3A8BCF), width: 1),
                                ),
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 1),
                                ),
                              ),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color.fromARGB(255, 34, 34, 34),
                                fontWeight: FontWeight.w500,
                              ),
                              onChanged: (value) {
                                final max = double.tryParse(value) ??
                                    _currentValues.end;
                                if (max <= widget.initValues.end &&
                                    max > _currentValues.start) {
                                  setState(() {
                                    _currentValues =
                                        RangeValues(_currentValues.start, max);
                                    _minController.text =
                                        '${_currentValues.start.toInt()}';
                                  });
                                  widget.onChanged(_currentValues);
                                }
                              },
                            ),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CustomRangeSliderThumbShape extends RoundRangeSliderThumbShape {
  const _CustomRangeSliderThumbShape({
    this.borderWidth = 2.0,
    required this.borderColor,
    required this.fillColor,
    super.enabledThumbRadius = 8.0,
  });
  final double borderWidth;
  final Color borderColor;
  final Color fillColor;

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    bool isDiscrete = false,
    bool isEnabled = false,
    bool? isOnTop,
    bool? isPressed,
    required SliderThemeData sliderTheme,
    TextDirection? textDirection,
    Thumb? thumb,
    double? value,
  }) {
    final borderPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    final fillPaint = Paint()
      ..color = fillColor
      ..style = PaintingStyle.fill;

    context.canvas.drawCircle(center, enabledThumbRadius, fillPaint);
    context.canvas.drawCircle(center, enabledThumbRadius, borderPaint);
  }
}
