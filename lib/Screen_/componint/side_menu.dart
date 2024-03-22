import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portofilo/Screen_/componint/Knowladge_Area.dart';
import 'package:portofilo/Screen_/componint/My_Info.dart';
import 'package:portofilo/Screen_/componint/Skill_Area.dart';
import 'package:portofilo/Screen_/componint/Skill_far_flutter.dart';
import 'package:portofilo/Screen_/componint/area_info_text.dart';
import 'package:portofilo/constraints.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultpadding),
            child: Column(
              children: [
                AreaInfoText(
                  text: 'Resdence',
                  title: 'Pakistan',
                ),
                AreaInfoText(
                  text: 'City',
                  title: 'Islamabad',
                ),
                AreaInfoText(
                  text: 'Age',
                  title: '18',
                ),
                SkillArea(),
                SizedBox(height: defaultpadding),
                SkillForFlutter(),
                KnowladgeShortCode(),
                SizedBox(height: defaultpadding),
                Divider(),
                TextButton(
                    onPressed: () {
                     // ignore: deprecated_member_use
                     launch('https://github.com/MustafaAhmad786/food-eCommerce-App');
                    },
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text('Download Portoflio'),
                          SizedBox(width: 5),
                          Icon(Icons.download_for_offline)
                        ],
                      ),
                    ))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
