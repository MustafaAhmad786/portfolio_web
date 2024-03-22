import 'package:flutter/material.dart';
import 'package:portofilo/components/animatedcircularindictor.dart';
import 'package:portofilo/constraints.dart';

class SkillArea extends StatelessWidget {
  const SkillArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: defaultpadding),
          child: Text(
            'Skill',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularIndictor(
                percentage: 0.8,
                label: 'Flutter',
              ),
            ),
            SizedBox(
              width: defaultpadding,
            ),
            Expanded(
              child: AnimatedCircularIndictor(
                percentage: 0.7,
                label: 'Firebase',
              ),
            ),
            SizedBox(
              width: defaultpadding,
            ),
            Expanded(
              child: AnimatedCircularIndictor(
                percentage: 0.5,
                label: 'Sqlite',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
