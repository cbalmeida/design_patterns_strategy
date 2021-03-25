import 'package:flutter/material.dart';

class Counter {
  int _value = 0;

  IncrementStrategy _incrementStrategy = IncrementStrategyAddByOne();

  void incrementValue() {
    if (_incrementStrategy != null) _value = _incrementStrategy.incrementValue(_value);
  }

  String getButtonText() {
    if (_incrementStrategy != null)
      return _incrementStrategy.getButtonText();
    else
      return "?";
  }

  Color getButtonColor() {
    if (_incrementStrategy != null)
      return _incrementStrategy.getButtonColor();
    else
      return Colors.grey;
  }

  int getValue() {
    return _value;
  }

  void setIncrementStrategy(IncrementStrategy incrementStrategy) {
    _incrementStrategy = incrementStrategy;
  }
}

abstract class IncrementStrategy {
  int incrementValue(int _value);

  String getButtonText();

  Color getButtonColor();
}

class IncrementStrategyAddByOne implements IncrementStrategy {
  @override
  Color getButtonColor() {
    return Colors.green;
  }

  @override
  String getButtonText() {
    return "+";
  }

  @override
  int incrementValue(int _value) {
    return (_value + 1);
  }
}

class IncrementStrategySubByOne implements IncrementStrategy {
  @override
  Color getButtonColor() {
    return Colors.red;
  }

  @override
  String getButtonText() {
    return "-";
  }

  @override
  int incrementValue(int _value) {
    return (_value - 1);
  }
}

class IncrementStrategyAddByTwo implements IncrementStrategy {

  @override
  Color getButtonColor() {
    return Colors.lightBlue;
  }

  @override
  String getButtonText() {
    return "++";
  }

  @override
  int incrementValue(int _value) {
    return (_value + 2);
  }

}
