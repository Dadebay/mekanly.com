// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import 'package:intl/intl.dart';

import '../../core/components/app_text.dart';
import '../../product/constants/constants.dart';

class ContactUsView extends StatefulWidget {
  const ContactUsView({super.key});

  static const routePath = '/contactUs-view';
  static const routeName = 'contactUs-view';

  @override
  State<ContactUsView> createState() => _ContactUsViewState();
}

class _ContactUsViewState extends State<ContactUsView> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = [];
  final List<DateTime> _dateTimes = [];

  void _sendMessage(DateTime dateTimeNow) {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _dateTimes.add(dateTimeNow);
        _messages.add(_controller.text);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorName.blueish,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Assets.icons.icBackImage.svg(package: 'gen'),
        ),
        title: AppText.s14w400BdM(
          'Administrator',
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          fontFamily: StringConstants.roboto,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: false,
                padding: const EdgeInsets.only(top: 16),
                itemCount: _messages.length.clamp(0, _dateTimes.length),
                itemBuilder: (context, index) {
                  final messageIndex = _messages.length - index - 1;
                  return Messages(
                    dateTime: _dateTimes[messageIndex],
                    message: _messages[messageIndex],
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(
                bottom: 2.h,
              ),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Siziň hatyňyz...',
                  hintStyle: TextStyle(
                    color: const Color(0xFF6A6A6A),
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    fontFamily: StringConstants.roboto,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(75).r,
                    borderSide: const BorderSide(
                      color: Color(0xFFF6F6F6),
                    ),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF6F6F6),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _sendMessage(DateTime.now());
                    },
                    icon: Assets.icons.icMessageSend.svg(
                      package: 'gen',
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
                onSubmitted: (_) => _sendMessage(DateTime.now()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Messages extends StatefulWidget {
  const Messages({
    Key? key,
    required this.message,
    required this.dateTime,
  }) : super(key: key);
  final String message;
  final DateTime dateTime;

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  bool isTapped = false;

  String formatDateTime(DateTime dateTime) {
    return DateFormat('dd.MM.yyyy HH:mm').format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          color: Colors.white,
          child: InkWell(
            onTap: () {
              setState(() {
                isTapped = !isTapped;
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (isTapped)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: AppText.s14w400BdM(
                      formatDateTime(widget.dateTime),
                      color: Colors.black,
                      fontFamily: StringConstants.roboto,
                      fontWeight: FontWeight.w400,
                      fontSize: 8.sp,
                    ),
                  ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(12).r,
                      topRight: const Radius.circular(12).r,
                      bottomLeft: const Radius.circular(12).r,
                    ),
                    color: const Color(0xFF3A8BCF),
                  ),
                  child: AppText.s14w400BdM(
                    widget.message,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: StringConstants.roboto,
                    color: Colors.white,
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
