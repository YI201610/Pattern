import 'dart:async';
import 'FrontCommand.dart';

class UnknownCommand extends FrontCommand {

  void init(Uri request, Future<Map> response){
    myRequest = request;
    myResponse = response;
  }

  int process() {
    print(runtimeType);
    return 0;
  }

}