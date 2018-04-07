import 'dart:async';
import 'dart:mirrors';

import 'Command/FrontCommand.dart';
import 'Command/SomeConcreteCommand1.dart';
import 'Command/SomeConcreteCommand2.dart';
import 'Command/UnknownCommand.dart';

class FrontController {

  doGET(Uri request, Future<Map> response) {

    FrontCommand command = _getCommand(request);
    command.init(request, response);
    command.process();

  }

  FrontCommand _getCommand(Uri request) {

    try {

      return _getCommandClass(request);

    } catch (e) {
      //throw new FormatException('EXPECTED AT LEAST 1 SECTION');
      rethrow; // Allow callers to see the exception.
    }
  }


  FrontCommand _getCommandClass(Uri request) {

    if(request.host.contains("itunes")){
      return new SomeConcreteCommand1();
    } else if (request.host.contains("google")) {
      return new SomeConcreteCommand2();
    } else {
      return new UnknownCommand();
    }

  }





}
