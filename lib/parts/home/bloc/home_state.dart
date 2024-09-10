part of '../home_part.dart';

@immutable
sealed class HomeState {}

final class HomeLoadedState extends HomeState {
  final bool isStarted;
  final List<ProcessInfo> processList;

  HomeLoadedState({this.isStarted = false, this.processList = const []});
}
