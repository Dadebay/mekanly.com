import '../../../config/config.dart';
import '../navigation.dart';

class CartRouter extends StatefulWidget {
  const CartRouter({super.key});
  @override
  State<CartRouter> createState() => _CartRouterState();
}

class _CartRouterState extends State<CartRouter> with AutomaticKeepAliveClientMixin<CartRouter> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Navigator(
      onGenerateRoute: RouterCart.onGenerateRoute,
      onPopPage: (b, g) => b.didPop(g),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
