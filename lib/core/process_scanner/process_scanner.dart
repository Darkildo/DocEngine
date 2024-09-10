import 'dart:async';
import 'dart:io';

class ProcessScanner {
  StreamController<ProcessInfo>? _controller;

  Stream<ProcessInfo> startScan() async* {
    _controller = _startScan();

    return _controller?.stream;
  }

  Future<bool> stopScan() async {
    await _controller?.close();
    return true;
  }

  StreamController<ProcessInfo> _startScan() async {}
}
