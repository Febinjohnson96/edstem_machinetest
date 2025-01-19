import 'package:edstem_machinetest/core/theme/styles/app_typography.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.runtime,
      required this.productionHouse,
      this.callback});
  final String title;
  final String imageUrl;
  final String runtime;
  final String productionHouse;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callback?.call(),
      child: Container(
        color: Colors.white24,
        width: 304,
        height: 120,
        child: Row(
          children: [
            SizedBox(
              width: 85,
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                title,
                style: AppTypography.bodysmallBold,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                productionHouse,
                style: AppTypography.bodysmall,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                '$runtime mins',
                style: AppTypography.bodysmall,
              )
            ])
          ],
        ),
      ),
    );
  }
}
