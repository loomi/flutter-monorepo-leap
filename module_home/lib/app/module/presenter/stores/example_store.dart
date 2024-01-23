// ignore_for_file: library_private_types_in_public_api

import 'package:common_dependencies/main.dart';
import 'package:common_domain/app/utils/app_state.dart';
import 'package:common_domain/app/utils/misc.dart';

import '../../domain/usecases/intefaces/i_get_example_uc.dart';
import '../../infra/models/example_model.dart';

part 'example_store.g.dart';

class ExampleStore = _ExampleStore with _$ExampleStore;

abstract class _ExampleStore with Store {
  @observable
  ExampleModel? example;

  @observable
  AppState appState = AppState.loaded;

  @action
  void changeAppState(AppState state) {
    appState = state;
  }

  @action
  Future<void> getExample() async {
    try {
      appState = AppState.loading;
      example = await GetIt.I.get<IGetExampleUseCase>()();
    } catch (e, s) {
      changeAppState(AppState.error);
      printException("ExampleStore.getExample", e, s);
    } finally {
      changeAppState(AppState.loaded);
    }
  }
}
