import 'package:flutter/material.dart';
import 'package:ns_utils/constants.dart';

///Parse to int or returns [defaultValue]
///
int toInt(Object value, {int defaultValue = defaultInt}) {
  int number = defaultValue;
  if (value != null) {
    try {
      number = toDouble(value).toInt();
    } on Exception catch (e, s) {
      debugPrint("toInt Exception : $e\n$s");
    }
  }
  return number;
}

///Parse to double or returns [defaultValue]
///
double toDouble(Object value, {double defaultValue = defaultDouble}) {
  double number = defaultDouble;
  if (value != null) {
    try {
      number = double.parse('$value') ?? defaultDouble;
    } on Exception catch (e, s) {
      debugPrint("toDouble Exception : $e\n$s");
    }
  }
  return number;
}
