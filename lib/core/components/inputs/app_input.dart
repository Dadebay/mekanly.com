import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../../utils/extensions.dart';
import '../app_text.dart';

class AppInput extends StatefulWidget {
  const AppInput({
    super.key,
    this.initialValue,
    this.controller,
    this.label,
    this.obscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.enabled,
    this.autofocus = false,
    this.hintText,
    this.type,
    this.inputFormatters,
    this.onChanged,
    this.onTap,
    this.onTapOutside,
    this.validator,
    this.focusNode,
    this.title,
    this.textAlign,
    this.maxLines,
    
  });

  final String? initialValue;
  final TextEditingController? controller;
  final Widget? label;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextAlign? textAlign;
  final bool? enabled;
  final bool autofocus;
  final String? hintText;
  final TextInputType? type;
  final String? title;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final void Function()? onTapOutside;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final int? maxLines;
 
  

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  final ValueNotifier<bool> showPassword = ValueNotifier<bool>(false);

  void changeVisibility() {
    showPassword.value = !showPassword.value;
  }

  final ValueNotifier<bool> _clearNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();

    widget.controller?.addListener(() {
      _clearNotifier.value = widget.controller?.text.isNotEmpty ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null)
          AppText.s12w500LbM(
            widget.title!,
            // color: ColorName.label,
          ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: ValueListenableBuilder<bool>(
            valueListenable: _clearNotifier,
            builder: (_, clear, __) {
              return ValueListenableBuilder<bool>(
                valueListenable: showPassword,
                builder: (_, show, __) {
                  return TextFormField(
                    maxLines: widget.maxLines ?? 1,
                    initialValue: widget.initialValue,
                    controller: widget.controller,
                    enabled: widget.enabled,
                    keyboardType: widget.type,
                    textAlign: widget.textAlign ?? TextAlign.start,
                    autofocus: widget.autofocus,
                    focusNode: widget.focusNode,
                    obscuringCharacter: '*',
                    style: context.textTheme.titleSmall?.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    // ignore: avoid_bool_literals_in_conditional_expressions
                    obscureText: show ? false : (widget.obscureText ?? false),
                    decoration: InputDecoration(
                      label: widget.label,
                      contentPadding: const EdgeInsets.fromLTRB(0, 6, 6, 6),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      isDense: true,
                      // prefixIcon: prefixIcon,
                      hintStyle: context.textTheme.titleSmall?.copyWith(
                        fontSize: 15.sp,
                        color: const Color(0xff999999),
                        fontWeight: FontWeight.w400,
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFDDDDDD),
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF4D8BBF),
                        ),
                      ),
                      prefix: widget.prefixIcon,
                      suffix:   (widget.obscureText ?? false)
                          ? IconButton(
                              onPressed: changeVisibility,
                              icon: Icon(
                                show
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                // color: ColorName.iconGrey,23123
                              ),
                            )
                          : (clear
                              ? SizedBox(
                                  width: 14.w,
                                  height: 14.w,
                                  child: InkWell(
                                    onTap: () {
                                      widget.controller?.clear();
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Assets.icons.icClear.svg(
                                        package: 'gen',
                                      ),
                                    ),
                                  ),
                                )
                              : null),
                      hintText: widget.hintText,
                    ),
                    cursorWidth: 1.5.w,
                    cursorHeight: 18.h,
                    cursorColor: const Color(0xFF4D8BBF),
                    validator: widget.validator,
                    onTapOutside: (event) {
                      // widget.onTapOutside?.call();
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    onTap: widget.onTap,
                    onChanged: widget.onChanged,
                    inputFormatters: widget.inputFormatters,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
