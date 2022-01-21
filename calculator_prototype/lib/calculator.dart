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
        home: Scaffold(body: LayoutBuilder(builder: (_, constraints) {
          var sizeWidth = constraints.maxWidth;
          var sizeHeight = constraints.maxHeight;

          return Container(
            color: Colors.grey.withOpacity(.2),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: sizeHeight * .033),
                  child: Text(
                    firstNumber,
                    style: TextStyle(fontSize: 40),
                  ),
                  alignment: Alignment.centerRight,
                  height: sizeHeight * .12,
                ),
                Container(
                  child: Text(
                    '$operation',
                    style: TextStyle(fontSize: 40),
                  ),
                  alignment: Alignment.centerRight,
                ),
                Container(
                  child: Text(
                    secondNumber,
                    style: TextStyle(fontSize: 40),
                  ),
                  alignment: Alignment.centerRight,
                  height: sizeHeight * .12,
                ),
                Container(
                  child: Text(
                    displayResult == '' ? '' : "= " + displayResult,
                    style: TextStyle(fontSize: 48),
                  ),
                  alignment: Alignment.centerRight,
                  height: sizeHeight * .12,
                ),
                Divider(
                  color: Colors.blue,
                  height: sizeHeight * .05,
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
                        child: StylesNumbers(
                            '7', sizeWidth * .19, sizeHeight * .12),
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
                        child: StylesNumbers(
                            '8', sizeWidth * .19, sizeHeight * .12),
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
                        child: StylesNumbers(
                            '9', sizeWidth * .19, sizeHeight * .12),
                      ),
                      InkWell(
                        onTap: (() {
                          control = true;
                          operation = Operacoes().operationSymbol('sum');
                          update();
                        }),
                        child: StylesOthers(
                            '+', sizeWidth * .19, sizeHeight * .12),
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
                          width: sizeWidth * .19,
                          height: sizeHeight * .12,
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
                        child: StylesNumbers(
                            '4', sizeWidth * .19, sizeHeight * .12),
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
                        child: StylesNumbers(
                            '5', sizeWidth * .19, sizeHeight * .12),
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
                        child: StylesNumbers(
                            '6', sizeWidth * .19, sizeHeight * .12),
                      ),
                      InkWell(
                        onTap: (() {
                          control = true;
                          operation = Operacoes().operationSymbol('minus');
                          update();
                        }),
                        child: StylesOthers(
                            '-', sizeWidth * .19, sizeHeight * .12),
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
                        child: StylesOthers(
                            '=', sizeWidth * .19, sizeHeight * .12),
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
                        child: StylesNumbers(
                            '1', sizeWidth * .19, sizeHeight * .12),
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
                        child: StylesNumbers(
                            '2', sizeWidth * .19, sizeHeight * .12),
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
                        child: StylesNumbers(
                            '3', sizeWidth * .19, sizeHeight * .12),
                      ),
                      InkWell(
                        onTap: (() {
                          control = true;
                          operation = Operacoes().operationSymbol('multiple');
                          update();
                        }),
                        child: StylesOthers(
                            '*', sizeWidth * .19, sizeHeight * .12),
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
                          width: sizeWidth * .19,
                          height: sizeHeight * .12,
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
                          width: sizeWidth * .19,
                          height: sizeHeight * .12,
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
                        child: StylesNumbers(
                            '0', sizeWidth * .19, sizeHeight * .12),
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
                        child: StylesOthers(
                            '-x', sizeWidth * .19, sizeHeight * .12),
                      ),
                      InkWell(
                        onTap: (() {
                          control = true;
                          operation = Operacoes().operationSymbol('division');
                          update();
                        }),
                        child: Container(
                          width: sizeWidth * .19,
                          height: sizeHeight * .12,
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
                        child: StylesOthers(
                            '.', sizeWidth * .19, sizeHeight * .12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        })));
  }
}
