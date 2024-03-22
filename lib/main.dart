import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofilo/Home/home_screen.dart';
import 'package:portofilo/Screen_/main_screen.dart';
import 'package:portofilo/constraints.dart';

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
