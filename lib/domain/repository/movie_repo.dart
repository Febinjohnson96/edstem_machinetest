import 'package:edstem_machinetest/domain/model/movie_model.dart';

abstract class MovieRepo {
  Future<List<MovieModel>> getMovies();
}
