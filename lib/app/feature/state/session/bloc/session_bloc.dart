import 'package:bloc/bloc.dart';
import 'session_barrel.dart';

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  SessionBloc() : super(SessionState(currentUser: 'user'));

  @override
  Stream<SessionState> mapEventToState(
    SessionEvent event,
  ) async* {
  }
}
