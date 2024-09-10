part of '../home_part.dart';

class ProcessInfo {
  final int pid;
  final String name;

  ProcessInfo(this.pid, this.name);

  @override
  bool operator ==(covariant ProcessInfo other) {
    if (identical(this, other)) return true;

    return other.pid == pid && other.name == name;
  }

  @override
  int get hashCode => pid.hashCode ^ name.hashCode;

  @override
  String toString() => 'ProcessInfo(pid: $pid, name: $name)';
}
