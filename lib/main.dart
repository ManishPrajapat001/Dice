import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
      MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('Dice')),
        backgroundColor: Colors.black12,
      ),
      body: DicePage(),
    ),
  ),);
}


class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int  firstDiceNumber=1,secondDiceNumber=1;
  void  ChangeInDice(){

    setState(() {
      firstDiceNumber=Random().nextInt(6)+1;
      secondDiceNumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            // flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: (){
                  ChangeInDice();
                    print ('u hve pressed left button');
                },

                child: Image.asset('images/dice$firstDiceNumber.png',
                  color : Colors.white54,),
              ),

            ),
          ),
          Expanded(
            // flex: 2,

            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(


                onPressed: (){
                  ChangeInDice();
                  print('u hve pressed right button');
                },
                child: Image.asset(
                  'images/dice$secondDiceNumber.png',
                   color: Colors.white60,
                   // color : Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



