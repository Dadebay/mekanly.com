import 'package:flutter/material.dart';

class DescriptionTextFied extends StatefulWidget {

  const DescriptionTextFied({
    super.key,
    required this.controller,
    required this.hintText,
  });
  final TextEditingController controller;
  final String hintText;

  @override
  // ignore: library_private_types_in_public_api
  _DescriptionTextFiedState createState() => _DescriptionTextFiedState();
}

class _DescriptionTextFiedState extends State<DescriptionTextFied> {
  static const double initialHeight = 50;
  static const double lineHeight = 24;
  static const int maxLines = 10;

  int currentLines = 1;
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    widget.controller.addListener(_updateLineCount);
    _updateLineCount();

    widget.controller.addListener(_scrollToSecondLine);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_updateLineCount);
    widget.controller.removeListener(_scrollToSecondLine);
    scrollController.dispose();
    super.dispose();
  }

  void _updateLineCount() {
    final text = widget.controller.text;
    int lines = '\n'.allMatches(text).length + 1;
    if (lines < 1) lines = 1;
    if (lines != currentLines) {
      setState(() {
        currentLines = lines.clamp(1, maxLines);
      });
    }
  }

  void _scrollToSecondLine() {
    final text = widget.controller.text;
    int lines = '\n'.allMatches(text).length + 1;

    if (lines > 1) {
      if (scrollController.hasClients) {
        final offset = lineHeight;
        if (scrollController.offset < offset) {
          scrollController.animateTo(
            offset,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOut,
          );
        }
      }
    } else {
      if (scrollController.hasClients) {
        if (scrollController.offset > 0) {
          scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double calculatedHeight = currentLines * lineHeight;
    double height =
        calculatedHeight < initialHeight ? initialHeight : calculatedHeight;
    if (height > maxLines * lineHeight) {
      height = maxLines * lineHeight;
    }

    return SizedBox(
      height: height,
      child: TextFormField(
        controller: widget.controller,
        keyboardType: TextInputType.multiline,
        maxLines: null,
        expands: false,
        cursorColor: Colors.blue,
        scrollController: scrollController, // scroll controller goýduk
        decoration: InputDecoration(
          hintText: widget.hintText,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF4D8BBF)),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFDDDDDD)),
          ),
        ),
      ),
    );
  }
}
