import 'dart:async';
import 'dart:mirrors';

import 'package:FrontController/Domain/Command/FrontCommand.dart';
import 'package:FrontController/Domain/Command/SomeConcreteCommand1.dart';
import 'package:FrontController/Domain/Command/SomeConcreteCommand2.dart';
import 'package:FrontController/Domain/Command/UnknownCommand.dart';


/**
 * URIからコマンドを決定する。
 * コマンドを初期化する。
 * コマンドに処理を依頼する。
 */
class FrontController {

  doGET(Uri request, Future<Map> response) {

    FrontCommand command = _getCommand(request);
    command.init(request, response);

    int resultCode = command.process();
    _forward(resultCode);

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

  _forward(int code) {
    //
    print('forward...');
  }
}
