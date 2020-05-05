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
        'display: ${display.toString()},equalResult: ${equalResult.toString()}';
    return '{$string}';
  }
}
