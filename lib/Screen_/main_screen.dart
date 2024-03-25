import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portofilo/Screen_/componint/side_menu.dart';
import 'package:portofilo/constraints.dart';
import 'package:portofilo/responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 24, 24, 24),
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              leading: Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
            )),
      drawer: SideMenu(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                //   colors: [
                //     Color(0xff00dbde).withOpacity(0.55),
                //     Color(0xfffc00ff).withOpacity(0.55)
                //   ],
                // )
                image: DecorationImage(
                    image: AssetImage('assets/image/mout-san.jpg'),
                    fit: BoxFit.cover)),
          ),
          Positioned.fill(
              child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              constraints: BoxConstraints(maxHeight: maxwidth),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (Responsive.isDesktop(context))
                    Expanded(flex: 2, child: SideMenu()),
                  Expanded(
                      flex: 7,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            ...children,
                          ],
                        ),
                      ))
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
