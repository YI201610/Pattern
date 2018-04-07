import 'FrontController.dart';
import 'dart:async';

main() {

  //通信リクエスト
  var sampleUri = new Uri.https(
      'rss.itunes.apple.com',
      '/api/v1/us/ios-apps/new-apps-we-love/all/10/explicit.json',
      null);

  //通信レスポンス
  Future<Map> httpResponse; //jsonなどが格納された通信レスポンス

  /* 通信処理のハンドリング */
  var front_controller = new FrontController();
  front_controller.doGET(sampleUri, httpResponse);

  print('done.');

}