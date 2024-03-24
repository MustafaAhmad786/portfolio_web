import 'package:flutter/material.dart';
import 'package:portofilo/constraints.dart';
import 'package:portofilo/responsive.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: defaultpadding, horizontal: 10),
      child: Responsive.isMobilelarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighltCounter(
                      counter: AnimatedCounter(value: 10, text: "M+"),
                      label: "Subscribe",
                    ),
                    HighltCounter(
                      counter: AnimatedCounter(value: 735, text: "+"),
                      label: "Video",
                    ),
                  ],
                ),
                SizedBox(height: defaultpadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighltCounter(
                      counter: AnimatedCounter(value: 8, text: "+"),
                      label: "Github Project",
                    ),
                    HighltCounter(
                      counter: AnimatedCounter(value: 100, text: "+"),
                      label: "Star",
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HighltCounter(
                  counter: AnimatedCounter(value: 10, text: "M+"),
                  label: "Subscribe",
                ),
                HighltCounter(
                  counter: AnimatedCounter(value: 735, text: "+"),
                  label: "Video",
                ),
                HighltCounter(
                  counter: AnimatedCounter(value: 8, text: "+"),
                  label: "Github Project",
                ),
                HighltCounter(
                  counter: AnimatedCounter(value: 100, text: "+"),
                  label: "Star",
                ),
              ],
            ),
    );
  }
}

class HighltCounter extends StatelessWidget {
  const HighltCounter({
    super.key,
    required this.counter,
    this.label,
  });
  final Widget counter;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(
          width: defaultpadding / 2,
        ),
        Text(
          label!,
          style: Theme.of(context).textTheme.subtitle1!,
        )
      ],
    );
  }
}

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    super.key,
    required this.value,
    required this.text,
  });
  final int value;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: defaultDuration,
      tween: IntTween(begin: 0, end: value),
      builder: (BuildContext context, value, Widget? child) {
        return Text(
          "$value$text",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Colors.yellow),
        );
      },
    );
  }
}
