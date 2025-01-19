import 'package:edstem_machinetest/injector.dart';
import 'package:edstem_machinetest/presentation/home/bloc/home_bloc.dart';
import 'package:edstem_machinetest/presentation/home/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) =>
          HomeBloc(movieRepo: injector())..add(HomeGetMoviesEvent()),
      child: const HomeScreen(),
    );
  }
}
