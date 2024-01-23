import '../../../infra/models/example_model.dart';

abstract class IGetExampleUseCase {
  Future<ExampleModel> call();
}
