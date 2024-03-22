import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portofilo/constraints.dart';

class KnowladgeShortCode extends StatelessWidget {
  const KnowladgeShortCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultpadding),
          child: Text(
            "Knowledge",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        KnowledgeArea(
          textknowladge: 'I directly recognize them',
        ),
        KnowledgeArea(
          textknowladge: 'Flutter Dart',
        ),
        KnowledgeArea(
          textknowladge: 'Photoshap',
        ),
        KnowledgeArea(
          textknowladge: 'Adope premiere pro',
        ),
      ],
    );
  }
}

class KnowledgeArea extends StatelessWidget {
  const KnowledgeArea({super.key, required this.textknowladge});
  final String textknowladge;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultpadding / 4),
      child: Row(
        children: [
          SvgPicture.asset("assets/svg_icon/svg_mark.svg"),
          SizedBox(width: defaultpadding / 2),
          Text(textknowladge)
          //19:15
        ],
      ),
    );
  }
}
