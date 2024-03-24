import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofilo/Home/home_screen.dart';
import 'package:portofilo/constraints.dart';
import 'package:portofilo/material_scrolling_horizantal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      scrollBehavior: CostomScrollingHorizantal(),
      theme: ThemeData.dark().copyWith(
          primaryColor: primarycolor,
          scaffoldBackgroundColor: bagcolor,
          canvasColor: bagcolor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white)
              .copyWith(
                  bodyLarge: TextStyle(color: bodytextColor),
                  bodyMedium: TextStyle(color: bodytextColor))),
      home: HomeScreen(),
    );
  }
}
