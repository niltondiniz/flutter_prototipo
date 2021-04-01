// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$batteryLevelAtom = Atom(name: '_HomeControllerBase.batteryLevel');

  @override
  String get batteryLevel {
    _$batteryLevelAtom.reportRead();
    return super.batteryLevel;
  }

  @override
  set batteryLevel(String value) {
    _$batteryLevelAtom.reportWrite(value, super.batteryLevel, () {
      super.batteryLevel = value;
    });
  }

  final _$valueAtom = Atom(name: '_HomeControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$getBatteryLevelAsyncAction =
      AsyncAction('_HomeControllerBase.getBatteryLevel');

  @override
  Future<void> getBatteryLevel() {
    return _$getBatteryLevelAsyncAction.run(() => super.getBatteryLevel());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
batteryLevel: ${batteryLevel},
value: ${value}
    ''';
  }
}
