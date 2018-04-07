import 'dart:async';
import 'dart:mirrors';

import 'Command/FrontCommand.dart';
import 'Command/SomeConcreteCommand1.dart';
import 'Command/SomeConcreteCommand2.dart';
import 'Command/UnknownCommand.dart';


/**
 * URIからコマンドを決定する。
 * コマンドを初期化する。
 * コマンドに処理を依頼する。
 */
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
      throw new Exception('Error: CANNOT CREATE COMMAND CLASS!');
      //rethrow; // Allow callers to see the exception.
    }
  }


  FrontCommand _getCommandClass(Uri request) {

    //TODO: InstanceMirrorを使ったリフレクションの仕組みで実装を試みる

    if(request.host.contains("itunes")){
      return new SomeConcreteCommand1();
    } else if (request.host.contains("google")) {
      return new SomeConcreteCommand2();
    } else {
      return new UnknownCommand();
    }

  }





}
