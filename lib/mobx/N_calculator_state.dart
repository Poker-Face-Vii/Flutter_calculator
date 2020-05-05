import 'package:math_expressions/math_expressions.dart';
import 'package:mobx/mobx.dart';

part 'N_calculator_state.g.dart';

class NCS = NormalCalculatorState with _$NCS;

abstract class NormalCalculatorState with Store {
  @observable
  String display = '';
  String expInput = '';
  @observable
  double equalResult = 0;
  @observable
  @action
  void num(value) {
    display = display + value;
    expInput = expInput + value;
  }

  @action
  void displayClear() {
    display = '';
    expInput = '';
    equalResult = 0;
  }

  

  @action
  void delete() {
    display =
        (display.length > 0) ? (display.substring(0, display.length - 1)) : "";
    expInput =  (expInput.length > 0) ? (expInput.substring(0, expInput.length - 1)) : "";
  }

  @action
  void operation(val, showVal) {
    display = display + showVal;
    expInput = expInput + val;
  }

  @action
  void evaluate() {
    Parser p = Parser();
    Expression exp = p.parse(expInput);
    ContextModel cm = new ContextModel();
    equalResult = exp.evaluate(EvaluationType.REAL, cm);
    display = '';
    expInput = '';
  }
}
