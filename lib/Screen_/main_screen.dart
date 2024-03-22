import 'package:flutter/material.dart';
import 'package:portofilo/Screen_/componint/side_menu.dart';
import 'package:portofilo/constraints.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(maxHeight: maxwidth),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: SideMenu()),
            Expanded(
                flex: 7,
                child: Container(
                  color: Colors.red,
                ))
          ],
        ),
      ),
    );
  }
}
