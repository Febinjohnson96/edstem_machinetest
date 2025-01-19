import 'package:edstem_machinetest/core/infra/api_manager.dart';
import 'package:edstem_machinetest/data/repository/movie_repo_impl.dart';
import 'package:edstem_machinetest/domain/repository/movie_repo.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> intializeInjector() async {
  if (!injector.isRegistered<ApiBaseHelper>()) {
    injector.registerSingleton<ApiBaseHelper>(ApiBaseHelper());
  }
  if (!injector.isRegistered<MovieRepo>()) {
    injector
        .registerSingleton<MovieRepo>(MovieRepoImpl(apiBaseHelper: injector()));
  }
}
