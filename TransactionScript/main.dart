import 'package:TransactionScript/Domain/TransactionScript1.dart';
import 'package:TransactionScript/Domain/TransactionScript2.dart';
import 'package:TransactionScript/Domain/TransactionScript3.dart';
import 'package:TransactionScript/Domain/ConcreteTransactionScript1.dart';
import 'package:TransactionScript/Domain/ConcreteTransactionScript2.dart';

main() {

  //For Presentation-1
  TransactionScript1 script1 = new TransactionScript1();
  script1.run();

  //For Presentation-2
  TransactionScript2 script2 = new TransactionScript2();
  script2.run();

  //For Presentation-3
  TransactionScript3 script3 = new TransactionScript3();
  script3.run();


  ConcreteTransactionScript1 script4 = new ConcreteTransactionScript1();
  script4.run();

  ConcreteTransactionScript2 script5 = new ConcreteTransactionScript2();
  script5.run();

  print('done.');
}
