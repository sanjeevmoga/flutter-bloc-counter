import 'dart:async';
import 'package:rxdart/subjects.dart';

class AndyBloc {

  final BehaviorSubject<int> _count =
    BehaviorSubject<int>(seedValue: 0);

  final StreamController<int> _countController =
      StreamController<int>();

  AndyBloc() {
    _countController.stream.listen((event) {
      _count.add(_count.value + 1);
    });
  }

  Sink<int> get countAdd => _countController.sink;
  Stream<int> get count => _count.stream;

  void dispose() {
    _count.close();
    _countController.close();
  }

}