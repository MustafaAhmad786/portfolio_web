import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portofilo/constraints.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/image/mount-man.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkcolor.withOpacity(0.30),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultpadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my amazing \nArt space!",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                MyBuidAnimatedText(),
                SizedBox(
                  height: defaultpadding,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: defaultpadding * 2,
                            vertical: defaultpadding),
                        backgroundColor: Colors.yellow),
                    child: Text(
                      "EXPLORA NOW",
                      style: TextStyle(color: darkcolor),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuidAnimatedText extends StatelessWidget {
  const MyBuidAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleMedium!,
      child: Row(
        children: [
          FlutterCodeText(),
          SizedBox(
            width: 1,
          ),
          Text('I build '),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText(
              'responsive web and mobile app.',
            ),
            TyperAnimatedText('complete e-commerce app Ui.'),
            TyperAnimatedText('chat app with dark and light theme.'),
          ]),
          SizedBox(
            width: 4,
          ),
          FlutterCodeText(),
        ],
      ),
    );
  }
}

class FlutterCodeText extends StatelessWidget {
  const FlutterCodeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(text: '<', children: [
      TextSpan(text: 'Flutter', style: TextStyle(color: Colors.yellow)),
      TextSpan(text: '> ')
    ]));
  }
}
