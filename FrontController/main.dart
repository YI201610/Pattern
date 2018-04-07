import 'FrontController.dart';
import 'dart:async';

main() {
  var front_controller = new FrontController();

  var sampleUri = new Uri.https(
      'rss.itunes.apple.com',
      '/api/v1/us/ios-apps/new-apps-we-love/all/10/explicit.json',
      null);

  Future<Map> httpResponse;

  front_controller.doGET(sampleUri, httpResponse);

  print(front_controller);

}