import 'dart:async';
import 'FrontCommand.dart';

class SomeConcreteCommand1 extends FrontCommand {

  void init(Uri request, Future<Map> response){

  }

  void process() {
    print(runtimeType);
  }

}