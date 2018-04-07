import 'dart:async';

abstract class FrontCommand {

  Uri myRequest;
  Future<Map> myResponse;

  void init(Uri request, Future<Map> response);
  int process();

}