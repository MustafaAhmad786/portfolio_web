import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portofilo/Screen_/componint/Knowladge_Area.dart';
import 'package:portofilo/Screen_/componint/My_Info.dart';
import 'package:portofilo/Screen_/componint/Skill_Area.dart';
import 'package:portofilo/Screen_/componint/Skill_far_flutter.dart';
import 'package:portofilo/Screen_/componint/area_info_text.dart';
import 'package:portofilo/constraints.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';

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
               
                TextButton(
                    onPressed: () => _downloadPdf(context),
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text('Download CV'),
                          SizedBox(width: 5),
                          Icon(Icons.download_for_offline)
                        ],
                      ),
                    )),
                      
              ],
            ),
          ))
        ],
      ),
    );
  }

  void _downloadPdf(BuildContext context) async {
    try {
      // Get the directory for storing files
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String appDocPath = appDocDir.path;

      // Define the file path for the PDF
      String pdfPath = '$appDocPath/Resume.pdf';

      // Get the PDF file from assets
      ByteData data = await rootBundle.load('assets/svg_icon/Resume.pdf');
      List<int> bytes = data.buffer.asUint8List();

      // Write the PDF file to the app's local storage
      await File(pdfPath).writeAsBytes(bytes);

      // Open the downloaded PDF file
      await OpenFile.open(pdfPath);
    } catch (e) {
      print('Error downloading PDF: $e');
    }
  }
/*   void _downloadPdf() async {
    const pdfUrl = 'assets/Resume.pdf';
    if (await canLaunch(pdfUrl)) {
      await launch(pdfUrl);
    } else {
      throw 'Could not launch $pdfUrl';
    }
  } */
  /*  void downloadPdf() async { its work in web appliction not mobile work
    String cvUrl = 'assets/Resume.pdf';

    html.AnchorElement anchor = html.AnchorElement(href: cvUrl);
    // Set the download attribute and file name for the anchor element
    anchor.setAttribute('download', 'pdf_file.pdf');
    // Simulate a click on the anchor element to trigger the download
    anchor.click();
  } */
}
