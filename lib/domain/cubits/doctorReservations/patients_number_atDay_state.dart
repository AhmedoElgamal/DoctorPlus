abstract class PatientsNumAtDayState {
  const PatientsNumAtDayState();

  @override
  List<Object> get props => [];
}

final class PatientsNumAtDayInitState extends PatientsNumAtDayState{}

class PatientsNumAtDayLoadedState extends PatientsNumAtDayState{
  final int patientsNumber;

  const PatientsNumAtDayLoadedState(this.patientsNumber);

  @override
  List<Object> get props => [patientsNumber];
}

final class PatientsNumAtDayPendingState extends PatientsNumAtDayState{}

final class PatientsNumAtDayFailedState extends PatientsNumAtDayState{
  final String message;

  const PatientsNumAtDayFailedState(this.message);

  @override
  List<Object> get props => [message];
}