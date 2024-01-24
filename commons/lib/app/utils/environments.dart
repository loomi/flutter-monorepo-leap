import 'package:common_dependencies/main.dart';

class Environments {
  static String get baseUrl => dotenv.env['BASE_URL'] ?? "";

  static String get authenticationEncryptionKey =>
      dotenv.env['ENCRYPTION_KEY'] ??
      ""; //create your own with => secure-random -l 16

  static String get authenticationIvKey =>
      dotenv.env['IV_KEY'] ?? ""; //create your own with => secure-random -l 16
}
