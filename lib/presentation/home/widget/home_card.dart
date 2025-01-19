import 'package:edstem_machinetest/core/theme/styles/app_typography.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 304,
      height: 120,
      child: Row(
        children: [
          Container(
            width: 85,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Column(children: [
            Text(
              'test title',
              style: AppTypography.bodysmallBold,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'runtime',
              style: AppTypography.bodysmall,
            )
          ])
        ],
      ),
    );
  }
}
