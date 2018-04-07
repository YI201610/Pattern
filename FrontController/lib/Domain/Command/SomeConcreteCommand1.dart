import 'dart:async';
import 'FrontCommand.dart';

class SomeConcreteCommand1 extends FrontCommand {

  void init(Uri request, Future<Map> response){
    myRequest = request;
    myResponse = response;
  }

  int process() {
    print(runtimeType);
    return 1;
  }

}