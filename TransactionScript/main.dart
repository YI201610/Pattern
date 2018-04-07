import 'package:TransactionScript/Domain/TransactionScript1.dart';
import 'package:TransactionScript/Domain/TransactionScript2.dart';
import 'package:TransactionScript/Domain/TransactionScript3.dart';

main() {
  TransactionScript1 script1 = new TransactionScript1();
  script1.run();

  TransactionScript2 script2 = new TransactionScript2();
  script2.run();

  TransactionScript3 script3 = new TransactionScript3();
  script3.run();

  print('done.');
}
