import 'package:flutter/material.dart';

class Sli extends StatelessWidget {
  const Sli({super.key, required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildListDelegate(children));
  }
}
