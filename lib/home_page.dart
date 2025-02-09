import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'my_button.dart';
import 'dart:math';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String userInput = "";
  String answer = "";
  ThemeData currentTheme = ThemeData.light();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: currentTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Kalkulator",
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.brightness_medium),
              onPressed: () {
                setState(
                  () {
                    currentTheme = currentTheme == ThemeData.light()
                        ? ThemeData.dark()
                        : ThemeData.light();
                  },
                );
              },
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  // decoration: BoxDecoration(
                  //   color: Color.fromARGB(255, 242, 242, 244),
                  //   borderRadius: BorderRadius.circular(30),
                  // ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            userInput.toString(),
                            style: TextStyle(
                              fontSize: 37,
                            ),
                          )),
                      SizedBox(height: 20),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            answer.toString(),
                            style: TextStyle(
                              fontSize: 37,
                            ),
                          )),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(
                          title: "AC",
                          color: Colors.green,
                          onPress: () {
                            userInput = "";
                            answer = "";
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 10),
                        MyButton(
                          title: "x",
                          color: Colors.blue,
                          onPress: () {
                            userInput += "x";
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 10),
                        MyButton(
                          title: "/",
                          color: Colors.blue,
                          onPress: () {
                            userInput += "/";
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 10),
                        MyButton(
                          title: "DEL",
                          color: Colors.red,
                          onPress: () {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "7",
                          color: Color.fromARGB(255, 242, 242, 244),
                          onPress: () {
                            userInput += "7";
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 10),
                        MyButton(
                          title: "8",
                          color: Color.fromARGB(255, 242, 242, 244),
                          onPress: () {
                            userInput += "8";
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 10),
                        MyButton(
                          title: "9",
                          color: Color.fromARGB(255, 242, 242, 244),
                          onPress: () {
                            userInput += "9";
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 10),
                        MyButton(
                          title: "+",
                          color: Colors.blue,
                          onPress: () {
                            userInput += "+";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "4",
                          color: Color.fromARGB(255, 242, 242, 244),
                          onPress: () {
                            userInput += "4";
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 10),
                        MyButton(
                          title: "5",
                          color: Color.fromARGB(255, 242, 242, 244),
                          onPress: () {
                            userInput += "5";
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 10),
                        MyButton(
                          title: "6",
                          color: Color.fromARGB(255, 242, 242, 244),
                          onPress: () {
                            userInput += "6";
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 10),
                        MyButton(
                          title: "-",
                          color: Colors.blue,
                          onPress: () {
                            userInput += "-";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "1",
                          color: Color.fromARGB(255, 242, 242, 244),
                          onPress: () {
                            userInput += "1";
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 10),
                        MyButton(
                          title: "2",
                          color: Color.fromARGB(255, 242, 242, 244),
                          onPress: () {
                            userInput += "2";
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 10),
                        MyButton(
                          title: "3",
                          color: Color.fromARGB(255, 242, 242, 244),
                          onPress: () {
                            userInput += "3";
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 10),
                        MyButton(
                          title: "^",
                          color: Colors.blue,
                          onPress: () {
                            userInput += "^";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "0",
                          color: Color.fromARGB(255, 242, 242, 244),
                          onPress: () {
                            userInput += "0";
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 10),
                        MyButton(
                          title: ".",
                          color: Color.fromARGB(255, 242, 242, 244),
                          onPress: () {
                            userInput += ".";
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 10),
                        MyButton(
                          title: "00",
                          color: Color.fromARGB(255, 242, 242, 244),
                          onPress: () {
                            userInput += "00";
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 10),
                        MyButton(
                          title: "=",
                          color: Colors.orange,
                          onPress: () {
                            equalButton();
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  void equalButton() {
    String finalUserInput = userInput.replaceAll('x', '*');

    List<String> parts = finalUserInput.split('^');

    if (parts.length == 2) {
      double base = double.parse(parts[0]);
      double exponent = double.parse(parts[1]);
      num eval = pow(base, exponent);
      answer = eval.toString();
    } else {
      Parser p = Parser();
      Expression expression = p.parse(finalUserInput);
      ContextModel contextModel = ContextModel();
      double eval = expression.evaluate(EvaluationType.REAL, contextModel);
      answer = eval.toString();
    }

    setState(() {});
  }
}
