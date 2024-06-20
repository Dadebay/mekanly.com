import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../navigation.dart';

class HomeRouter extends StatefulWidget {
  const HomeRouter({super.key});
  @override
  State<HomeRouter> createState() => _HomeRouterState();
}

class _HomeRouterState extends State<HomeRouter> with AutomaticKeepAliveClientMixin<HomeRouter> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Navigator(
      key: NavKey.homeKey,
      initialRoute: Routes.home,
      onGenerateRoute: RouterHome.onGenerateRoute,
      onPopPage: (b, g) => b.didPop(g),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
