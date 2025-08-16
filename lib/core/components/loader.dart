import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  const Loader({super.key, this.loader, this.bgColor});
  final Widget? loader;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black.withOpacity(0.3),
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(50),
          decoration: BoxDecoration(
            color: bgColor ?? Colors.black87,
            borderRadius: BorderRadius.circular(20),
          ),
          child: loader ??
              const SizedBox(
                height: 65,
                width: 65,
                child: CircularProgressIndicator(
                  color: Colors.white60,
                  strokeWidth: 5,
                ),
              ),
        ),
      ),
    );
  }
}
