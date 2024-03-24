// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:portofilo/Screen_/componint/Knowladge_Area.dart';
import 'package:portofilo/Screen_/componint/My_Info.dart';
import 'package:portofilo/Screen_/componint/Skill_Area.dart';
import 'package:portofilo/Screen_/componint/Skill_far_flutter.dart';
import 'package:portofilo/Screen_/componint/area_info_text.dart';
import 'package:portofilo/constraints.dart';

// import 'dart:html' as html;
class SideMenu extends StatefulWidget {
  const SideMenu({
    super.key,
  });

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
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
                /* Expanded(
                  inshallah oneday this code is ready but small is not ready
                    child: WebView(
                  initialUrl: widget.pdfUrl,
                  javascriptMode:JavaScriptMode.unrestricted,
                  onWebViewCreated: (WebViewController controller) {
                    _controller = controller;
                  },
                )), */
                TextButton(
                    onPressed: () {
                      // downloadPdf();
                    },
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text('Download CV'),
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

  /*  void downloadPdf() async {
    String cvUrl = 'assets/Resume.pdf';

    html.AnchorElement anchor = html.AnchorElement(href: cvUrl);
    // Set the download attribute and file name for the anchor element
    anchor.setAttribute('download', 'pdf_file.pdf');
    // Simulate a click on the anchor element to trigger the download
    anchor.click();
  } */
}
