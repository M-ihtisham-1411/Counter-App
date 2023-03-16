import 'package:hive_flutter/hive_flutter.dart';
// import 'package:hive/hive.dart';

class Database {
  final _mycounter = Hive.box("buttonbox");
  late int counter;
  void initialState() {
    counter = 0;
  }

  void loadState() {
    counter = _mycounter.get('counterdata');
  }

  void updateState() {
    _mycounter.put(counter, 'counterdata');
  }
}

final db = Database();
