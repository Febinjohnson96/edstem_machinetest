import 'package:edstem_machinetest/core/infra/api_endpoints.dart';
import 'package:edstem_machinetest/core/infra/api_manager.dart';
import 'package:edstem_machinetest/domain/model/movie_model.dart';
import 'package:edstem_machinetest/domain/repository/movie_repo.dart';
import 'package:flutter/material.dart';

class MovieRepoImpl implements MovieRepo {
  final ApiBaseHelper apiBaseHelper;

  MovieRepoImpl({required this.apiBaseHelper});
  @override
  Future<List<MovieModel>> getMovies() async {
    List<MovieModel> movieList = [];
    debugPrint('getMovies');
    try {
      final response = await apiBaseHelper
          .get(endpoint: ApiEndpoints.discoverMovies, params: {});
      movieList =
          (response as List).map((e) => MovieModel.fromJson(e)).toList();
      debugPrint(response.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
    return movieList;
  }
}
