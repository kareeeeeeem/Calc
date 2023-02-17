import 'package:calculator/modules/MyButton.dart';
import 'package:flutter/material.dart ';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
          //Calculator display

          Row(
          children: [
          SingleChildScrollView(
          scrollDirection: Axis.vertical,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // here buttons function will be called where we will pass some arguments
                      clcButton('AC', Colors.grey, Colors.black),
                      clcButton('+/_', Colors.grey, Colors.black),
                      clcButton('%', Colors.grey, Colors.black),
                      clcButton('/', Colors.amber[700]!, Colors.white),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // here buttons function will be called where we will pass some arguments
                    clcButton('7', Colors.grey, Colors.white),
                    clcButton('8', Colors.grey, Colors.white),
                    clcButton('9', Colors.grey, Colors.white),
                    clcButton('x', Colors.amber[700]!, Colors.white),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    clcButton('4', Colors.grey, Colors.white),
                    clcButton('5', Colors.grey, Colors.white),
                    clcButton('6', Colors.grey, Colors.white),
                    clcButton('-', Colors.amber[700]!, Colors.white),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // here buttons function will be called where we will pass some arguments
                    clcButton('1', Colors.grey, Colors.white),
                    clcButton('2', Colors.grey, Colors.white),
                    clcButton('3', Colors.grey, Colors.white),
                    clcButton('+', Colors.amber[700]!, Colors.white),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //this is button 0
                    ElevatedButton(
                      onPressed: () {
                        //button function
                      },
                      child: Text(
                        "0",
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                    ),
                    clcButton('.', Colors.grey, Colors.white),
                    clcButton('=', Colors.amber[700]!, Colors.white),
                  ],
                )

              ],
            ),
          )
          ],
      ),],
    ),
        )));
  }
}
