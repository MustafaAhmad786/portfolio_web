import 'package:flutter/material.dart';
import 'package:portofilo/constraints.dart';

/// animatedCircularindicator
class AnimatedCircularIndictor extends StatelessWidget {
  const AnimatedCircularIndictor({
    super.key,
    required this.percentage,
    required this.label,
  });
  final double percentage;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            duration: Duration(seconds: 2),
            tween: Tween<double>(begin: 0, end: percentage),
            builder: (BuildContext context, double value, Widget? child) {
              return Stack(fit: StackFit.expand, children: [
                CircularProgressIndicator(
                  value: value,
                  color: Colors.yellow,
                  backgroundColor: darkcolor,
                ),
                Center(
                  child: Text(
                    (value * 100).toInt().toString() + '%',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ]);
            },
          ),
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.fade,
          style: Theme.of(context).textTheme.titleMedium,
        )
      ],
    );
  }
}

/// animatedLinearindicator
class AnimatedLinearCircularIndicator extends StatelessWidget {
  const AnimatedLinearCircularIndicator({
    super.key,
    required this.percentage,
    required this.label,
  });
  final double percentage;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultpadding),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: percentage),
          duration: Duration(seconds: 2),
          builder: (BuildContext context, double value, Widget? child) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      label,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      (value * 100).toInt().toString() + '%',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                LinearProgressIndicator(
                  minHeight: 3.3,
                  value: value,
                  backgroundColor: darkcolor,
                  color: Colors.yellow,
                ),
              ],
            );
          }),
    );
  }
}
