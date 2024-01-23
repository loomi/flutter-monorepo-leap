import '../../infra/models/example_model.dart';

abstract class IExampleRepository {
  Future<ExampleModel> getExample();
}
