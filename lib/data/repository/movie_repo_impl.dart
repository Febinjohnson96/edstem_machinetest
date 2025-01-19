import 'package:edstem_machinetest/core/infra/api_endpoints.dart';
import 'package:edstem_machinetest/core/infra/api_manager.dart';
import 'package:edstem_machinetest/domain/repository/movie_repo.dart';
import 'package:flutter/material.dart';

class MovieRepoImpl implements MovieRepo {
  final ApiBaseHelper apiBaseHelper;

  MovieRepoImpl({required this.apiBaseHelper});
  @override
  Future<void> getMovies() async {
    final response = await apiBaseHelper
        .get(endpoint: ApiEndpoints.discoverMovies, params: {});
    debugPrint(response.toString());
  }
}
