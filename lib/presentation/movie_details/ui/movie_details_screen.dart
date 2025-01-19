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
            height: 10,
          ),
          Text(
            "Plot",
            style: AppTypography.bodybold,
          ),
          Text(
            movieDetail.plot,
            style: AppTypography.bodySemibold,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Director",
            style: AppTypography.bodybold,
          ),
          Text(
            movieDetail.director,
            style: AppTypography.bodySemibold,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Actors",
            style: AppTypography.bodybold,
          ),
          SizedBox(
            height: 20,
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    Text(movieDetail.actors[index]),
                separatorBuilder: (context, index) => const SizedBox(
                      width: 8,
                    ),
                itemCount: movieDetail.actors.length),
          ),
          SizedBox(
            height: 10,
          ),
          Row(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Production House",
                style: AppTypography.bodybold,
              ),
              Text(
                movieDetail.production,
                style: AppTypography.bodySemibold,
              ),
            ]),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Awards", style: AppTypography.bodybold),
                Text(movieDetail.awards, style: AppTypography.bodySemibold),
              ],
            )
          ])
        ],
      ),
    );
  }
}
