import 'package:flutter/cupertino.dart';

/// FileName engine_util.dart
///
/// @Author jiangjunhui
/// @Date 2023/5/8 14:18
///
/// @Description TODO

class EngineUtil {
  WidgetsBinding get engine {
    return WidgetsFlutterBinding.ensureInitialized();
  }

  Future<void> forceAppUpdate() async {
    await engine.performReassemble();
  }
}
