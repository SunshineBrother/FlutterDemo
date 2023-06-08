import 'dart:io';
import 'package:path_provider/path_provider.dart';

/// FileName my_file.dart
///
/// @Author jiangjunhui
/// @Date 2023/6/8 16:19
///
/// @Description TODO
class MyFileManager {
  /// 写入数据
  Future<File> writeFile(
      {required String path, required String content}) async {
    final filePath = await _getFilePath(path: path);
    final file = await filePath.writeAsString(content);
    return file;
  }

  /// 读取数据
  Future<String> getFile({required String path}) async {
    final filePath = await _getFilePath(path: path);
    final json = filePath.readAsStringSync();
    return json;
  }

  /// 获取文件目录
  Future<File> _getFilePath({required String path}) async {
    final dir = await getApplicationDocumentsDirectory();
    return File('${dir.path}/${path}');
  }
}
