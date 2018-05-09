/* DBテーブルの各行ごとに、１インスタンスを生成する。 */
class PersonRowDataGateway {
  String _lastName;
  String _firstName;
  double _numberOfDependencies;

  String getLastName() {
    return _lastName;
  }

  setLastName(String lastName) {
    _lastName = lastName;
  }

  String getFirstName() {
    return _firstName;
  }

  setFirstName(String firstName) {
    _firstName = firstName;
  }

  update() {

    // 属性を用いて、DBを更新する
    print('update Person...');
  }

  insert() {

  }


  delete() {

  }

}