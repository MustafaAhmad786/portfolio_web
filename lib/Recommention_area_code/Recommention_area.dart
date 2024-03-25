import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portofilo/Models/recommendation.dart';
import 'package:portofilo/constraints.dart';

class RecommentionArea extends StatelessWidget {
  const RecommentionArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 10),
          child: Text('Recommention',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge // es ka jak use huta hain headline6 old,
              ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(demo_recommendations.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 15),
              child: RecommentionCard(
                recommendation: demo_recommendations[index],
              ),
            );
          })),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class RecommentionCard extends StatelessWidget {
  const RecommentionCard({
    super.key,
    required this.recommendation,
  });
  final Recommendation recommendation;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          width: 345,
          padding: EdgeInsets.all(defaultpadding),
          color: Colors.white.withOpacity(0.100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                recommendation.name!,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                recommendation.source!,
              ),
              SizedBox(height: 10),
              Text(
                recommendation.text!,
              )
            ],
          ),
        ),
      ),
    );
  }
}
