import 'dart:async';
import 'FrontCommand.dart';

class SomeConcreteCommand2 extends FrontCommand {


  void init(Uri request, Future<Map> response){
    myRequest = request;
    myResponse = response;
  }

  void process() {
    print(runtimeType);
  }

}