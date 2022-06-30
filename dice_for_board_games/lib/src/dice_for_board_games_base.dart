import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(149, 136, 147, 121),
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  // fontFamily: 'SourceSansPro',
                  color: Colors.red[100],
                  fontSize: 19,
                ),
              ),
              // Container(
              //     child: Row(children: <Widget>[
              //       Icon(Icons.add_shopping_cart),
              //     ])),
            ],
          ),
        ),
      ),
    );
  }
}