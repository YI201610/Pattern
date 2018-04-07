import 'package:TransactionScript/TechnicalService/DBService.dart';

/**
 * 順次処理1
 */
class TransactionScript1 {

  run(){

    print("${runtimeType}, 妥当性検証");

    print("${runtimeType}, DB情報取得");
    DBService.query("sql");

    print("${runtimeType}, 空き部屋確認");
    DBService.query("sql");

    print("${runtimeType}, 各種DB計算");
    DBService.query("sql");

    print("${runtimeType}, DB情報表示");

  }
}