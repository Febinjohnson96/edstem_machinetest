import 'package:edstem_machinetest/core/routes/route_name.dart';
import 'package:edstem_machinetest/core/theme/styles/app_typography.dart';
import 'package:edstem_machinetest/presentation/home/bloc/home_bloc.dart';
import 'package:edstem_machinetest/presentation/home/widget/home_card.dart';
import 'package:edstem_machinetest/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        child: Column(
      spacing: 20,
      children: [
        SizedBox(
          width: double.infinity,
          child: Center(
            child: Text(
              'Movie List',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is HomeLoaded) {
              return Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    height: 16,
                  ),
                  itemCount: state.movieList.length,
                  itemBuilder: (context, index) => HomeCard(
                    callback: () => context.push(RouteName.movieDetail,
                        extra: state.movieList[index]),
                    productionHouse: state.movieList[index].production,
                    title: state.movieList[index].title,
                    imageUrl: state.movieList[index].poster,
                    runtime: state.movieList[index].runtime.toString(),
                  ),
                ),
              );
            } else if (state is HomeError) {
              return Center(
                  child: Text(
                "Error",
                style: AppTypography.heading6Bold,
              ));
            }
            return SizedBox.shrink();
          },
        )
      ],
    ));
  }
}
