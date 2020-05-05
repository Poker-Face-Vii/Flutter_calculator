// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'N_calculator_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NCS on NormalCalculatorState, Store {
  final _$displayAtom = Atom(name: 'NormalCalculatorState.display');

  @override
  String get display {
    _$displayAtom.context.enforceReadPolicy(_$displayAtom);
    _$displayAtom.reportObserved();
    return super.display;
  }

  @override
  set display(String value) {
    _$displayAtom.context.conditionallyRunInAction(() {
      super.display = value;
      _$displayAtom.reportChanged();
    }, _$displayAtom, name: '${_$displayAtom.name}_set');
  }

  final _$expInputAtom = Atom(name: 'NormalCalculatorState.expInput');

  @override
  String get expInput {
    _$expInputAtom.context.enforceReadPolicy(_$expInputAtom);
    _$expInputAtom.reportObserved();
    return super.expInput;
  }

  @override
  set expInput(String value) {
    _$expInputAtom.context.conditionallyRunInAction(() {
      super.expInput = value;
      _$expInputAtom.reportChanged();
    }, _$expInputAtom, name: '${_$expInputAtom.name}_set');
  }

  final _$equalResultAtom = Atom(name: 'NormalCalculatorState.equalResult');

  @override
  double get equalResult {
    _$equalResultAtom.context.enforceReadPolicy(_$equalResultAtom);
    _$equalResultAtom.reportObserved();
    return super.equalResult;
  }

  @override
  set equalResult(double value) {
    _$equalResultAtom.context.conditionallyRunInAction(() {
      super.equalResult = value;
      _$equalResultAtom.reportChanged();
    }, _$equalResultAtom, name: '${_$equalResultAtom.name}_set');
  }

  final _$operationOnAtom = Atom(name: 'NormalCalculatorState.operationOn');

  @override
  bool get operationOn {
    _$operationOnAtom.context.enforceReadPolicy(_$operationOnAtom);
    _$operationOnAtom.reportObserved();
    return super.operationOn;
  }

  @override
  set operationOn(bool value) {
    _$operationOnAtom.context.conditionallyRunInAction(() {
      super.operationOn = value;
      _$operationOnAtom.reportChanged();
    }, _$operationOnAtom, name: '${_$operationOnAtom.name}_set');
  }

  final _$isDotOnAtom = Atom(name: 'NormalCalculatorState.isDotOn');

  @override
  bool get isDotOn {
    _$isDotOnAtom.context.enforceReadPolicy(_$isDotOnAtom);
    _$isDotOnAtom.reportObserved();
    return super.isDotOn;
  }

  @override
  set isDotOn(bool value) {
    _$isDotOnAtom.context.conditionallyRunInAction(() {
      super.isDotOn = value;
      _$isDotOnAtom.reportChanged();
    }, _$isDotOnAtom, name: '${_$isDotOnAtom.name}_set');
  }

  final _$NormalCalculatorStateActionController =
      ActionController(name: 'NormalCalculatorState');

  @override
  void num(dynamic value) {
    final _$actionInfo = _$NormalCalculatorStateActionController.startAction();
    try {
      return super.num(value);
    } finally {
      _$NormalCalculatorStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void displayClear() {
    final _$actionInfo = _$NormalCalculatorStateActionController.startAction();
    try {
      return super.displayClear();
    } finally {
      _$NormalCalculatorStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void delete() {
    final _$actionInfo = _$NormalCalculatorStateActionController.startAction();
    try {
      return super.delete();
    } finally {
      _$NormalCalculatorStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void operation(dynamic val, dynamic showVal) {
    final _$actionInfo = _$NormalCalculatorStateActionController.startAction();
    try {
      return super.operation(val, showVal);
    } finally {
      _$NormalCalculatorStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void dot(dynamic val, dynamic showVal) {
    final _$actionInfo = _$NormalCalculatorStateActionController.startAction();
    try {
      return super.dot(val, showVal);
    } finally {
      _$NormalCalculatorStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void evaluate() {
    final _$actionInfo = _$NormalCalculatorStateActionController.startAction();
    try {
      return super.evaluate();
    } finally {
      _$NormalCalculatorStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'display: ${display.toString()},expInput: ${expInput.toString()},equalResult: ${equalResult.toString()},operationOn: ${operationOn.toString()},isDotOn: ${isDotOn.toString()}';
    return '{$string}';
  }
}
