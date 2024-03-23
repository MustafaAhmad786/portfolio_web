import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portofilo/Models/recommendation.dart';
import 'package:portofilo/Screen_/all_container_project/my_project.dart';
import 'package:portofilo/Screen_/main_screen.dart';
import 'package:portofilo/component/home_banner.dart';
import 'package:portofilo/constraints.dart';
import 'package:portofilo/newbar_code.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(

            /// just like 10M+ subscibe, 750+ video ,8+ Github Project , 100+ Star
            ),
        MyProject(),
        Column(
          children: [
            Text('Recommention',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge // es ka jak use huta hain headline6 old,
                ),
            Container(
              width: 400,
              padding: EdgeInsets.all(defaultpadding),
              color: secondarycolor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    demo_recommendations[0].name!,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(height: 6),
                  Text(
                    demo_recommendations[0].source!,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(height: 6),
                  Text(
                    demo_recommendations[0].text!,
                    style: Theme.of(context).textTheme.titleSmall,
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
