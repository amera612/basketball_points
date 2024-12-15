import 'package:basketball_points/cubit/counter_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void TeamAPoint(int buttonNum) {
    teamAPoints += buttonNum;
    emit(CounterAState());
  }

  void TeamBPoint(int buttonNum) {
    teamBPoints += buttonNum;
    emit(CounterBState());
  }
}
