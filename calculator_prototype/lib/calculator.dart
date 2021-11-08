import 'package:flutter/material.dart';
import 'operations.dart';

class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  _calculatorState createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  bool control = false;
  String firstNumber = '';
  String secondNumber = '';
  double result = 0;
  String operation = Operacoes().operationSymbol("");

  final objOperacoes = Operacoes();

  @override
  Widget build(BuildContext context) {
    void update() {
      setState(() {});
    }

    print("Refresh");
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            color: Colors.grey.withOpacity(0.2),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  child: Text(''),
                ),
                Container(
                  margin: const EdgeInsets.all(2),
                  child: Text(
                    firstNumber == '' ? '0' : firstNumber,
                    style: TextStyle(fontSize: 40),
                  ),
                  alignment: Alignment.centerRight,
                ),
                Container(
                  margin: const EdgeInsets.all(2),
                  child: Text(''),
                ),
                Container(
                  child: Text(
                    '$operation',
                    style: TextStyle(fontSize: 40),
                  ),
                  alignment: Alignment.centerRight,
                ),
                Container(
                  margin: const EdgeInsets.all(2),
                  child: Text(''),
                ),
                Container(
                  margin: const EdgeInsets.all(2),
                  child: Text(
                    secondNumber == '' ? '0' : secondNumber,
                    style: TextStyle(fontSize: 40),
                  ),
                  alignment: Alignment.centerRight,
                ),
                Container(
                  child: Text(
                    '',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(2),
                  child: Text(
                    "= " + result.toStringAsFixed(2),
                    style: TextStyle(fontSize: 48),
                  ),
                  alignment: Alignment.centerRight,
                ),
                Divider(
                  color: Colors.blue,
                ),
                Container(
                  child: Wrap(
                    children: [
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            if (firstNumber.length <= 7) {
                              firstNumber += '7';
                            } else {
                              update();
                            }
                            update();
                          } else {
                            if (secondNumber.length <= 7) {
                              secondNumber += '7';
                            } else {
                              update();
                            }
                            update();
                          }
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: Text(
                              "7",
                              style: TextStyle(fontSize: 48),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            if (firstNumber.length <= 7) {
                              firstNumber += '8';
                            } else {
                              update();
                            }
                            update();
                          } else {
                            if (secondNumber.length <= 7) {
                              secondNumber += '8';
                            } else {
                              update();
                            }
                            update();
                          }
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: Text(
                              "8",
                              style: TextStyle(fontSize: 48),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            if (firstNumber.length <= 7) {
                              firstNumber += '9';
                            } else {
                              update();
                            }
                            update();
                          } else {
                            if (secondNumber.length <= 7) {
                              secondNumber += '9';
                            } else {
                              update();
                            }
                            update();
                          }
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: Text(
                              "9",
                              style: TextStyle(fontSize: 48),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          control = true;
                          operation = Operacoes().operationSymbol('sum');
                          update();
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: Text(
                              "+",
                              style:
                                  TextStyle(fontSize: 48, color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          firstNumber = '';
                          secondNumber = '';
                          result = 0;
                          control = false;
                          operation = Operacoes().operationSymbol('');
                          update();
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: Icon(
                              Icons.refresh,
                              size: 38,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            if (firstNumber.length <= 7) {
                              firstNumber += '4';
                            } else {
                              update();
                            }
                            update();
                          } else {
                            if (secondNumber.length <= 7) {
                              secondNumber += '4';
                            } else {
                              update();
                            }
                            update();
                          }
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: Text(
                              "4",
                              style: TextStyle(fontSize: 48),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            if (firstNumber.length <= 7) {
                              firstNumber += '5';
                            } else {
                              update();
                            }
                            update();
                          } else {
                            if (secondNumber.length <= 7) {
                              secondNumber += '5';
                            } else {
                              update();
                            }
                            update();
                          }
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: Text(
                              "5",
                              style: TextStyle(fontSize: 48),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            if (firstNumber.length <= 7) {
                              firstNumber += '6';
                            } else {
                              update();
                            }
                            update();
                          } else {
                            if (secondNumber.length <= 7) {
                              secondNumber += '6';
                            } else {
                              update();
                            }
                            update();
                          }
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: Text(
                              "6",
                              style: TextStyle(fontSize: 48),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          control = true;
                          operation = Operacoes().operationSymbol('minus');
                          update();
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: Text(
                              "-",
                              style:
                                  TextStyle(fontSize: 48, color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          if (operation == '+') {
                            result = objOperacoes.soma(
                                double.parse(firstNumber),
                                double.parse(secondNumber));
                            update();
                          } else if (operation == '-') {
                            result = objOperacoes.subtracao(
                                double.parse(firstNumber),
                                double.parse(secondNumber));
                            update();
                          } else if (operation == '*') {
                            result = objOperacoes.multiplicacao(
                                double.parse(firstNumber),
                                double.parse(secondNumber));
                            update();
                          } else if (operation == '/') {
                            result = objOperacoes.divisao(
                                double.parse(firstNumber),
                                double.parse(secondNumber));
                            update();
                          } else {
                            update();
                          }
                          firstNumber = result.toStringAsFixed(2);
                          operation = '';
                          secondNumber = '';
                          update();
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: Text(
                              "=",
                              style:
                                  TextStyle(fontSize: 48, color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            if (firstNumber.length <= 7) {
                              firstNumber += '1';
                            } else {
                              update();
                            }
                            update();
                          } else {
                            if (secondNumber.length <= 7) {
                              secondNumber += '1';
                            } else {
                              update();
                            }
                            update();
                          }
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: Text(
                              "1",
                              style: TextStyle(fontSize: 48),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            if (firstNumber.length <= 7) {
                              firstNumber += '2';
                            } else {
                              update();
                            }
                            update();
                          } else {
                            if (secondNumber.length <= 7) {
                              secondNumber += '2';
                            } else {
                              update();
                            }
                            update();
                          }
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(fontSize: 48),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            if (firstNumber.length <= 7) {
                              firstNumber += '3';
                            } else {
                              update();
                            }
                            update();
                          } else {
                            if (secondNumber.length <= 7) {
                              secondNumber += '3';
                            } else {
                              update();
                            }
                            update();
                          }
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: Text(
                              "3",
                              style: TextStyle(fontSize: 48),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          control = true;
                          operation = Operacoes().operationSymbol('multiple');
                          update();
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: Text(
                              "*",
                              style:
                                  TextStyle(fontSize: 48, color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            firstNumber = firstNumber.substring(
                                0, firstNumber.length - 1);
                            update();
                          } else if (control == true) {
                            secondNumber = secondNumber.substring(
                                0, secondNumber.length - 1);
                            update();
                          }
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: Icon(
                              Icons.backspace,
                              size: 38,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            if (firstNumber.length <= 7) {
                              firstNumber += '0';
                            } else {
                              update();
                            }
                            update();
                          } else {
                            if (secondNumber.length <= 7) {
                              secondNumber += '0';
                            } else {
                              update();
                            }
                            update();
                          }
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: Text(
                              "0",
                              style: TextStyle(fontSize: 48),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          control = true;
                          operation = Operacoes().operationSymbol('division');
                          update();
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: Text(
                              "/",
                              style:
                                  TextStyle(fontSize: 48, color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            if (firstNumber.length <= 7 &&
                                !firstNumber.contains(".")) {
                              firstNumber += '.';
                            } else {
                              update();
                            }
                            update();
                          } else {
                            if (secondNumber.length <= 7 &&
                                !secondNumber.contains(".")) {
                              secondNumber += '.';
                            } else {
                              update();
                            }
                            update();
                          }
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: Text(
                              ".",
                              style:
                                  TextStyle(fontSize: 48, color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
