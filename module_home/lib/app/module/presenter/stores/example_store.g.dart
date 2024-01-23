// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ExampleStore on _ExampleStore, Store {
  late final _$exampleAtom =
      Atom(name: '_ExampleStore.example', context: context);

  @override
  ExampleModel? get example {
    _$exampleAtom.reportRead();
    return super.example;
  }

  @override
  set example(ExampleModel? value) {
    _$exampleAtom.reportWrite(value, super.example, () {
      super.example = value;
    });
  }

  late final _$appStateAtom =
      Atom(name: '_ExampleStore.appState', context: context);

  @override
  AppState get appState {
    _$appStateAtom.reportRead();
    return super.appState;
  }

  @override
  set appState(AppState value) {
    _$appStateAtom.reportWrite(value, super.appState, () {
      super.appState = value;
    });
  }

  late final _$getExampleAsyncAction =
      AsyncAction('_ExampleStore.getExample', context: context);

  @override
  Future<void> getExample() {
    return _$getExampleAsyncAction.run(() => super.getExample());
  }

  late final _$_ExampleStoreActionController =
      ActionController(name: '_ExampleStore', context: context);

  @override
  void changeAppState(AppState state) {
    final _$actionInfo = _$_ExampleStoreActionController.startAction(
        name: '_ExampleStore.changeAppState');
    try {
      return super.changeAppState(state);
    } finally {
      _$_ExampleStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
example: ${example},
appState: ${appState}
    ''';
  }
}
