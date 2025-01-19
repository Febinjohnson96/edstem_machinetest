import 'package:edstem_machinetest/presentation/home/widget/home_card.dart';
import 'package:edstem_machinetest/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
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
        HomeCard()
      ],
    ));
  }
}
