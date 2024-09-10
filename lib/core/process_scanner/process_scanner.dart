import 'dart:async';
import 'dart:io';
import 'package:win32/win32.dart' as winapi;

class ProcessScanner {
  StreamController<ProcessInfo>? _controller;

  Stream<ProcessInfo> startScan() async* {
    _controller = await _startScan();

    await for (var e in _controller!.stream) {
      yield e;
    }
  }

  Future<bool> stopScan() async {
    await _controller?.close();
    return true;
  }

  Future<StreamController<ProcessInfo>> _startScan() async {
    final _streamController = StreamController<ProcessInfo>();

    return _streamController;
  }
}
