// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initial_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $InitialController = BindInject(
  (i) => InitialController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$InitialController on _InitialControllerBase, Store {
  final _$valueAtom = Atom(name: '_InitialControllerBase.value');

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

  final _$widgetsInitalAtom =
      Atom(name: '_InitialControllerBase.widgetsInital');

  @override
  List<Widget> get widgetsInital {
    _$widgetsInitalAtom.reportRead();
    return super.widgetsInital;
  }

  @override
  set widgetsInital(List<Widget> value) {
    _$widgetsInitalAtom.reportWrite(value, super.widgetsInital, () {
      super.widgetsInital = value;
    });
  }

  final _$_InitialControllerBaseActionController =
      ActionController(name: '_InitialControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_InitialControllerBaseActionController.startAction(
        name: '_InitialControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_InitialControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
widgetsInital: ${widgetsInital}
    ''';
  }
}
