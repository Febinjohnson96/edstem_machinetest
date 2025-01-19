import 'package:edstem_machinetest/domain/model/movie_model.dart';
import 'package:edstem_machinetest/presentation/movie_details/ui/movie_details_screen.dart';
import 'package:flutter/material.dart';

class MovieDetailsUi extends StatelessWidget {
  const MovieDetailsUi({super.key, required this.movie});
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return MovieDetailsScreen(
      movieDetail: movie,
    );
  }
}
