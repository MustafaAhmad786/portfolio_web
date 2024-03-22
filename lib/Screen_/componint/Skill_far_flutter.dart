import 'package:flutter/material.dart';
import 'package:portofilo/components/animatedcircularindictor.dart';

class SkillForFlutter extends StatelessWidget {
  const SkillForFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Text(
          "Coding",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(height: 12),
        AnimatedLinearCircularIndicator(
          percentage: 0.90,
          label: "Flutter",
        ),
        AnimatedLinearCircularIndicator(
          percentage: 0.80,
          label: "Dart",
        ),
        AnimatedLinearCircularIndicator(
          percentage: 0.70,
          label: "Html",
        ),
        AnimatedLinearCircularIndicator(
          percentage: 0.45,
          label: "Css",
        ),
        AnimatedLinearCircularIndicator(
          percentage: 0.60,
          label: "JavaScript",
        ),
      ],
    );
  }
}
