import 'dart:io';

import 'package:common_dependencies/main.dart';

Future<File?> getImageHelper({required ImageSource source}) async {
  final ImagePicker picker = ImagePicker();
  XFile? image = await picker.pickImage(
    source: source,
  );

  if (image != null) {
    return File(image.path);
  }

  return null;
}

Future<File?> getFileHelper() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles();

  if (result != null) {
    File file = File(result.files.single.path!);
    return file;
  }

  return null;
}

Future<File?> getVideoHelper({
  required ImageSource source,
  Duration? maxDuration,
}) async {
  final ImagePicker picker = ImagePicker();

  final pickedFile = await picker.pickVideo(
    source: source,
    preferredCameraDevice: CameraDevice.front,
    maxDuration: maxDuration,
  );

  XFile? xfilePick = pickedFile;

  if (xfilePick != null) {
    var file = File(pickedFile!.path);
    return file;
  }

  return null;
}

Future<File> compressAndGetFile({
  required File file,
  int minWidth = 1920,
  int minHeight = 1080,
}) async {
  String path = (await getTemporaryDirectory()).path;
  var result = File((await FlutterImageCompress.compressAndGetFile(
        file.absolute.path,
        "$path/${DateTime.now().microsecondsSinceEpoch.toString()}.png",
        format: CompressFormat.png,
        minHeight: minHeight,
        minWidth: minWidth,
      ))
          ?.path ??
      "");
  if (result.path.isEmpty) {
    result = await compressAndGetFile(
      file: file,
      minHeight: minHeight,
      minWidth: minWidth,
    );
  }
  return result;
}
