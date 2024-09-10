part of '../home_part.dart';

@immutable
sealed class HomeEvent {}

final class HomeSwitchScanningEvent extends HomeEvent {}
