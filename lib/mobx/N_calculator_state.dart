import 'package:math_expressions/math_expressions.dart';
import 'package:mobx/mobx.dart';

part 'N_calculator_state.g.dart';

class NCS = NormalCalculatorState with _$NCS;

abstract class NormalCalculatorState with Store {
  //* ///////  These are All my Observables /////////////////////////////
  @observable
  String display = '';
  @observable
  String expInput = '';
  @observable
  double equalResult = 0;
  @observable
  bool operationOn;
  @observable
  bool isDotOn;
//*   End  /////////////////////////////////////////////////////////////

  @action
  void num(value) {
    display = display + value;
    expInput = expInput + value;
    operationOn = false;
    isDotOn = false;
  }

  @action
  void displayClear() {
    display = '';
    expInput = '';
    equalResult = 0;
    operationOn = null;
    isDotOn = null;
  }

  @action
  void delete() {
    display =
        (display.length > 0) ? (display.substring(0, display.length - 1)) : "";
    expInput =
        (expInput.length > 0) ? expInput.substring(0, expInput.length - 1) : "";
  }

  @action
  void operation(val, showVal) {
    if (val == '+' || val == '-' || val == '/' || val == '*') {
      if (operationOn == true) {
      } else if (operationOn == false) {
        display = display + showVal;
        expInput = expInput + val;
        operationOn = true;
      }
    } else {
      display = display + showVal;
      expInput = expInput + val;
    }
    isDotOn = false;
  }

  @action
  void dot(val, showVal) {
    if (operationOn == true) {
    } else if (operationOn == false) {
      if (isDotOn == false) {
        display = display + showVal;
        expInput = expInput + val;
        operationOn = true;
        isDotOn = true;
      }
    } else {
      if (isDotOn == null) {
        display = display + '0' + showVal;
        expInput = expInput + val;
        isDotOn = true;
      }
    }
  }

  @action
  void evaluate() {
    try {
      Parser p = Parser();
      Expression exp = p.parse(expInput);
      ContextModel cm = new ContextModel();
      equalResult = exp.evaluate(EvaluationType.REAL, cm);
      display = '';
      expInput = '';
      operationOn = null;
      isDotOn = null;
    } catch (e) {
      display = 'Error !!';
      equalResult = null;
      operationOn = null;
      isDotOn = null;
    }
  }
}
