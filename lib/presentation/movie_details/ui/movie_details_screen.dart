import 'package:edstem_machinetest/core/theme/styles/app_typography.dart';
import 'package:edstem_machinetest/domain/model/movie_model.dart';
import 'package:edstem_machinetest/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key, required this.movieDetail});
  final MovieModel movieDetail;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 400,
            child: Image.network(
              movieDetail.poster,
            ),
          ),
          Text(
            movieDetail.title,
            style: AppTypography.heading3,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Plot",
            style: AppTypography.bodybold,
          ),
          Text(
            movieDetail.plot,
            style: AppTypography.bodySemibold,
          ),
        ],
      ),
    );
  }
}
