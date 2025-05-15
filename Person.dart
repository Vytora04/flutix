// Contoh Encapsulation
class Person {
  String? _name;
  int? _age;

  Person(this._name, this._age);

  void introduce() {
    print("Hello, my name is ${_name}. My age is ${_age}");
  }

  String? getName() {
    return _name;
  }

  void setName(String newName) {
    _name = newName;
  }

  // int? getAge() {
  //   return _age;
  // }

  // void setAge(int newAge) {
  //   _age = newAge;
  // }

  int birthday() {
    return _age! + 1;
  }
}
