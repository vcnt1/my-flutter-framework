import 'package:bloc/bloc.dart';

import 'home_barrel.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
  }
}
