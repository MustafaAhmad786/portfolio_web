import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color.fromARGB(255, 47, 47, 63),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(),
            GestureDetector(
              onTap: () {
                PhotoClickShow(context);
              },
              child: Hero(
                tag: "image",
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/image/mount-river.jpg'),
                ),
              ),
            ),
            Text(
              'Mustafa Ahmad',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              'Flutter Developer & Founder of \n The Flutter way',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
              ),
            ),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }

  PhotoClickShow(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Container(
                height: 700,
                width: 700,
                child: Hero(
                  tag: "image",
                  child: Image.asset(
                    'assets/image/mount-river.jpg',
                    height: 700,
                    width: 700,
                  ),
                ),
              ),
            ));
  }
}
