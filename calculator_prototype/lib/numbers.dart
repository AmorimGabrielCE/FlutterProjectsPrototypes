import 'package:flutter/rendering.dart';

class NumbersDart {
  String tapNumber(String number, String algarism) {
    if (number.contains(".") && number.contains("-")) {
      if (number.length <= 5) {
        number += algarism;
      }
    } else if (number.contains(".") || number.contains("-")) {
      if (number.length <= 4) {
        number += algarism;
      }
    } else {
      if (number.length <= 3) {
        number += algarism;
      }
    }
    return number;
  }
}
