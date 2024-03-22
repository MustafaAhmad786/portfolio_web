import 'package:flutter/material.dart';
import 'package:portofilo/constraints.dart';
class AreaInfoText extends StatelessWidget {
  const AreaInfoText({super.key, this.title, this.text});
  final String? title, text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultpadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text!,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            title!,
          ),
        ],
      ),
    );
  }
}