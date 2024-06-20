import 'package:flutter/material.dart';

import '../navigation.dart';

class ProfileRouter extends StatefulWidget {
  const ProfileRouter({super.key});

  @override
  State<ProfileRouter> createState() => _ProfileRouterState();
}

class _ProfileRouterState extends State<ProfileRouter> with AutomaticKeepAliveClientMixin<ProfileRouter> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Navigator(
      key: NavKey.profileKey,
      initialRoute: Routes.profile,
      onGenerateRoute: RouterProfile.onGenerateRoute,
      onPopPage: (b, g) => b.didPop(g),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
