import 'package:edstem_machinetest/core/routes/page_transition.dart';
import 'package:edstem_machinetest/core/routes/route_name.dart';
import 'package:edstem_machinetest/presentation/home/home_ui.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  AppRoutes._();
  static final GoRouter appRoutes = GoRouter(routes: [
    PageTransition.pageTransition(
        path: RouteName.home, pageBuilder: (context, state) => const HomeUi()),
  ]);
}
