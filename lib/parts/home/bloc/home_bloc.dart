part of '../home_part.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this.scanner) : super(HomeLoadedState()) {
    on<HomeEvent>((ev, em) => switch (ev) {
          HomeSwitchScanningEvent() => _switchScanningEvent(ev, em)
        });
  }
  final ProcessScanner scanner;
  Future<void> _switchScanningEvent(
      HomeSwitchScanningEvent event, Emitter<HomeState> emit) async {}
}
