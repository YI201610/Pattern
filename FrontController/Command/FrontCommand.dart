import 'dart:async';

abstract class FrontCommand {

  void init(Uri request, Future<Map> response);
  void process();

}