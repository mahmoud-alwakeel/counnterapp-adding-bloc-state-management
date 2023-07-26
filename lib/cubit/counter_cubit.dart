import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;

  int teamBPoints = 0;

 /* void incrementTeamA(int buttonNum){
    teamAPoints = buttonNum;
    emit(CounterAIncrementState());
  }

  void incrementTeamB(int buttonNum){
    teamBPoints = buttonNum;
    emit(CounterBIncrementState());
  } */

  // we can put both functions into one function that emits 2 states like this
  void incrementTeam({required String team, required int buttonNum}){
    if (team == 'A'){
      teamAPoints += buttonNum;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += buttonNum;
      emit(CounterBIncrementState());
    }
  }
}