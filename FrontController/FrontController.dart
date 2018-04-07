import 'dart:async';
import 'dart:mirrors';

import 'FrontCommand.dart';
import 'SomeConcreteCommand1.dart';
import 'SomeConcreteCommand2.dart';
import 'UnknownCommand.dart';

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
    } else if (request.host == "google") {
      return new SomeConcreteCommand2();
    } else {
      return new UnknownCommand();
    }

  }





}
