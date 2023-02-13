import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(WelcomeScreen());
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: ScreenOne());
  }
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: [
              PopupMenuButton<String>(
                onSelected: (value) => print(value),
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(value: 'hello', child: Text('')),
                    PopupMenuItem(child: Text('')),
                    PopupMenuItem(child: Text('')),
                    PopupMenuItem(child: Text('')),
                  ];
                },
              )
            ],
            leading: IconButton(
                color: Colors.blue,
                iconSize: 88,
                onPressed: () {},
                icon: const Icon(
                  color: Colors.blue,
                  Icons.add,
                  size: 8,
                ))),
        body: ImageFiltered(
       imageFilter: ImageFilter.blur(sigmaY: 2,sigmaX: 2),
          child: Image.network(

              'https://islamonline.net/wp-content/uploads/2021/04/%D9%85%D8%AF%D9%8A%D9%86%D8%A9-%D8%A7%D9%84%D9%82%D8%AF%D8%B3-2.jpg'),
        )
        // body: const SafeArea(
        //     child: Align(
        //         alignment: AlignmentDirectional.center,
        //         child: Text(
        //           'hello',
        //           style: TextStyle(
        //               decoration: TextDecoration.lineThrough,
        //               decorationColor: Colors.amber,
        //               decorationStyle: TextDecorationStyle.dashed,
        //               decorationThickness: 5,
        //               fontStyle: FontStyle.italic,
        //               letterSpacing: 7,
        //               wordSpacing: 6,
        //               color: Colors.blue,
        //               fontWeight: FontWeight.normal),
        //         ))),
        );
  }
}
