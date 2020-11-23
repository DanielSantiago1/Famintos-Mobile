import 'package:rxdart/rxdart.dart';

class LoginBloc {
  LoginBloc() {
    statusOut = _status.stream;
    _statusIn = _status.sink;
  }
  //?STREAMS

  var _status = BehaviorSubject<bool>();
  Stream<bool> statusOut;
  // ignore: close_sinks
  // ignore: unused_field
  Sink<bool> _statusIn;

  void signIn({String username, String password}) {}

  void dispose() {
    _status.close();
  }
}
