import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portofilo/Recommention_area_code/Recommention_area.dart';
import 'package:portofilo/Screen_/all_container_project/my_project.dart';
import 'package:portofilo/Screen_/main_screen.dart';
import 'package:portofilo/component/home_banner.dart';
import 'package:portofilo/newbar_code.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(
            /* just like 10M+ subscibe, 750+ video ,8+ Github Project , 100+ Star */),
        MyProject(/* this project allpadding 15 */),
        RecommentionArea()
      ],
    );
  }
}
