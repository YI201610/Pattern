import 'dart:async';
import 'FrontCommand.dart';

class UnknownCommand extends FrontCommand {

  void init(Uri request, Future<Map> response){

  }

  void process() {
    print(runtimeType);
  }

}