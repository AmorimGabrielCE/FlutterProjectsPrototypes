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

  @override
  Widget build(BuildContext context) {
    void update() {
      setState(() {});
    }

    print("Refresh");
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            child: Text(
              firstNumber == '' ? '0' : firstNumber,
              style: TextStyle(fontSize: 40),
            ),
            color: Colors.green[100],
          ),
          Container(
            child: Text(
              '$operation',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            child: Text(
              secondNumber == '' ? '0' : secondNumber,
              style: TextStyle(fontSize: 40),
            ),
            color: Colors.green[100],
          ),
          Container(
            child: Text(
              '=',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            child: Text(
              '$result',
              style: TextStyle(fontSize: 40),
            ),
            color: Colors.pink[100],
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
                    color: Colors.blueGrey,
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
                    color: Colors.blueGrey,
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
                    color: Colors.blueGrey,
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
                    color: Colors.blueGrey,
                    child: Center(
                      child: Text(
                        "+",
                        style: TextStyle(fontSize: 48),
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
                    color: Colors.blueGrey,
                    child: Center(
                      child: Icon(
                        Icons.refresh,
                        size: 38,
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
                    color: Colors.blueGrey,
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
                    color: Colors.blueGrey,
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
                    color: Colors.blueGrey,
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
                    color: Colors.blueGrey,
                    child: Center(
                      child: Text(
                        "-",
                        style: TextStyle(fontSize: 48),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (() {
                    if (operation == '+') {
                      result = Operacoes().soma(double.parse(firstNumber),
                          double.parse(secondNumber));
                      update();
                    } else if (operation == '-') {
                      result = Operacoes().subtracao(double.parse(firstNumber),
                          double.parse(secondNumber));
                      update();
                    } else if (operation == '*') {
                      result = Operacoes().multiplicacao(
                          double.parse(firstNumber),
                          double.parse(secondNumber));
                      update();
                    } else if (operation == '/') {
                      result = Operacoes().divisao(double.parse(firstNumber),
                          double.parse(secondNumber));
                      update();
                    } else {
                      update();
                    }
                    update();
                  }),
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    width: 70,
                    height: 70,
                    color: Colors.blueGrey,
                    child: Center(
                      child: Text(
                        "=",
                        style: TextStyle(fontSize: 48),
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
                    color: Colors.blueGrey,
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
                    color: Colors.blueGrey,
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
                    color: Colors.blueGrey,
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
                    color: Colors.blueGrey,
                    child: Center(
                      child: Text(
                        "*",
                        style: TextStyle(fontSize: 48),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (() {
                    if (control == false) {
                      firstNumber =
                          firstNumber.substring(0, firstNumber.length - 1);
                      update();
                    } else if (control == true) {
                      secondNumber =
                          secondNumber.substring(0, secondNumber.length - 1);
                      update();
                    }
                  }),
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    width: 70,
                    height: 70,
                    color: Colors.blueGrey,
                    child: Center(
                      child: Icon(
                        Icons.backspace,
                        size: 38,
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
                    color: Colors.blueGrey,
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
                    color: Colors.blueGrey,
                    child: Center(
                      child: Text(
                        "/",
                        style: TextStyle(fontSize: 48),
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
                    color: Colors.blueGrey,
                    child: Center(
                      child: Text(
                        ".",
                        style: TextStyle(fontSize: 48),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
