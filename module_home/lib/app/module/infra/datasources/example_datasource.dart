import 'package:common_dependencies/main.dart';

import '../../domain/repositories/i_example_repository.dart';
import '../models/example_model.dart';

part "example_datasource.g.dart";

@RestApi()
abstract class ExampleDatasource implements IExampleRepository {
  factory ExampleDatasource(Dio dio, {String baseUrl}) = _ExampleDatasource;

  @override
  @GET("/")
  Future<ExampleModel> getExample();
}
