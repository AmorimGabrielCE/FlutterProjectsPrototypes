import 'package:flutter/material.dart';
import 'operations.dart';
import 'numbers.dart';
import 'styles.dart';

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
  String displayResult = '';
  int resultLength = 0;
  String lastFourChars = '';
  int notDecimal = 0;
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
                    firstNumber,
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
                    secondNumber,
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
                    displayResult == '' ? '' : "= " + displayResult,
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
                            firstNumber =
                                NumbersDart().tapNumber(firstNumber, '7');
                            update();
                          } else {
                            secondNumber =
                                NumbersDart().tapNumber(secondNumber, '7');
                          }
                          update();
                        }),
                        child: StylesNumbers('7'),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            firstNumber =
                                NumbersDart().tapNumber(firstNumber, '8');
                            update();
                          } else {
                            secondNumber =
                                NumbersDart().tapNumber(secondNumber, '8');
                          }
                          update();
                        }),
                        child: StylesNumbers('8'),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            firstNumber =
                                NumbersDart().tapNumber(firstNumber, '9');
                            update();
                          } else {
                            secondNumber =
                                NumbersDart().tapNumber(secondNumber, '9');
                          }
                          update();
                        }),
                        child: StylesNumbers('9'),
                      ),
                      InkWell(
                        onTap: (() {
                          control = true;
                          operation = Operacoes().operationSymbol('sum');
                          update();
                        }),
                        child: StylesOthers('+'),
                      ),
                      InkWell(
                        onTap: (() {
                          firstNumber = '';
                          secondNumber = '';
                          result = 0;
                          control = false;
                          operation = Operacoes().operationSymbol('');
                          displayResult = '';
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
                            firstNumber =
                                NumbersDart().tapNumber(firstNumber, '4');
                            update();
                          } else {
                            secondNumber =
                                NumbersDart().tapNumber(secondNumber, '4');
                          }
                          update();
                        }),
                        child: StylesNumbers('4'),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            firstNumber =
                                NumbersDart().tapNumber(firstNumber, '5');
                            update();
                          } else {
                            secondNumber =
                                NumbersDart().tapNumber(secondNumber, '5');
                          }
                          update();
                        }),
                        child: StylesNumbers('5'),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            firstNumber =
                                NumbersDart().tapNumber(firstNumber, '6');
                            update();
                          } else {
                            secondNumber =
                                NumbersDart().tapNumber(secondNumber, '6');
                          }
                          update();
                        }),
                        child: StylesNumbers('6'),
                      ),
                      InkWell(
                        onTap: (() {
                          control = true;
                          operation = Operacoes().operationSymbol('minus');
                          update();
                        }),
                        child: StylesOthers('-'),
                      ),
                      InkWell(
                        onTap: (() {
                          if (operation == '+') {
                            result = objOperacoes.soma(
                                double.parse(firstNumber),
                                double.parse(secondNumber));
                            print(result);
                            update();
                          } else if (operation == '-') {
                            result = objOperacoes.subtracao(
                                double.parse(firstNumber),
                                double.parse(secondNumber));
                            print(result);
                            update();
                          } else if (operation == '*') {
                            result = objOperacoes.multiplicacao(
                                double.parse(firstNumber),
                                double.parse(secondNumber));
                            print(result);
                            update();
                          } else if (operation == '/') {
                            result = objOperacoes.divisao(
                                double.parse(firstNumber),
                                double.parse(secondNumber));
                            print(result);
                            update();
                          } else {
                            update();
                          }
                          resultLength = result.toStringAsFixed(4).length;
                          // tam minimo = 6 e max = 13
                          lastFourChars = result
                              .toStringAsFixed(4)
                              .substring(resultLength - 4, resultLength);
                          operation = '';
                          secondNumber = '';
                          if (lastFourChars == '0000') {
                            result.abs();
                            displayResult = result.toStringAsFixed(0);
                            firstNumber = result.toStringAsFixed(0);
                          } else {
                            displayResult = result.toStringAsFixed(4);
                            firstNumber = result.toStringAsFixed(4);
                          }
                          update();
                        }),
                        child: StylesOthers('='),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            firstNumber =
                                NumbersDart().tapNumber(firstNumber, '1');
                            update();
                          } else {
                            secondNumber =
                                NumbersDart().tapNumber(secondNumber, '1');
                          }
                          update();
                        }),
                        child: StylesNumbers('1'),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            firstNumber =
                                NumbersDart().tapNumber(firstNumber, '2');
                            update();
                          } else {
                            secondNumber =
                                NumbersDart().tapNumber(secondNumber, '2');
                          }
                          update();
                        }),
                        child: StylesNumbers('2'),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            firstNumber =
                                NumbersDart().tapNumber(firstNumber, '3');
                            update();
                          } else {
                            secondNumber =
                                NumbersDart().tapNumber(secondNumber, '3');
                          }
                          update();
                        }),
                        child: StylesNumbers('3'),
                      ),
                      InkWell(
                        onTap: (() {
                          control = true;
                          operation = Operacoes().operationSymbol('multiple');
                          update();
                        }),
                        child: StylesOthers('*'),
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
                            firstNumber =
                                NumbersDart().tapNumber(firstNumber, '0');
                            update();
                          } else {
                            secondNumber =
                                NumbersDart().tapNumber(secondNumber, '0');
                          }
                          update();
                        }),
                        child: StylesNumbers('0'),
                      ),
                      InkWell(
                        onTap: (() {
                          if (control == false) {
                            if (firstNumber == "") {
                              firstNumber += '-';
                            } else {
                              update();
                            }
                            update();
                          } else {
                            if (secondNumber == "") {
                              secondNumber += '-';
                            } else {
                              update();
                            }
                            update();
                          }
                        }),
                        child: StylesOthers('-x'),
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
                            if (firstNumber.length <= 3 &&
                                !firstNumber.contains(".")) {
                              firstNumber += '.';
                            } else {
                              update();
                            }
                            update();
                          } else {
                            if (secondNumber.length <= 3 &&
                                !secondNumber.contains(".")) {
                              secondNumber += '.';
                            } else {
                              update();
                            }
                            update();
                          }
                        }),
                        child: StylesOthers('.'),
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
