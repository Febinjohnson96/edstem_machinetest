import 'package:edstem_machinetest/core/routes/page_transition.dart';
import 'package:edstem_machinetest/core/routes/route_name.dart';
import 'package:edstem_machinetest/domain/model/movie_model.dart';
import 'package:edstem_machinetest/presentation/home/home_ui.dart';
import 'package:edstem_machinetest/presentation/movie_details/movie_details_ui.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  AppRoutes._();
  static final GoRouter appRoutes = GoRouter(routes: [
    PageTransition.pageTransition(
        path: RouteName.home, pageBuilder: (context, state) => const HomeUi()),
    PageTransition.pageTransition(
        path: RouteName.movieDetail,
        pageBuilder: (context, state) {
          final movie = state.extra as MovieModel;
          return MovieDetailsUi(
            movie: movie,
          );
        })
  ]);
}
