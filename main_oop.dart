// OOP => class + object

// class mirip blue print
// attribute => karakteristik dari sebuah class
// method => apa yang bisa dibuat oleh sebuah class
// class Person {
//   String? name;
//   int? age;

//   Person(this.name, this.age);

//   void introduce() {
//     // print(name);
//     // print(age);
//     // print("Hello, my name is $name. My age is $age");
//     print("Hello, my name is ${name}. My age is ${age}");
//   }

//   int birthday() {
//     // return age + 1;
//     return age! + 1;
//   }
// }

import 'Person.dart';
import 'Shape.dart';

void main() {
  // Object => yang dapat kita liat dan amati
  // List<Person> persons = [];
  // Person person = Person("Rich", 20);
  // person.name = "Rich";
  // person.age = 20;
  // print(person.name);
  // print(person.age);
  // person.introduce();

  Person rich = Person("Rich", 20);
  rich.introduce();
  print(rich.birthday());

  // Contoh Encapsulation
  // rich.

  // Contoh Abstraction
  Square square = Square(10.0);
  print(square.getArea());

  Circle circle = Circle(10.0);
  print(circle.getArea());

  // Contoh polymorphism
  List<Shape> shapes = [square, circle];
}

// Pillars of OOP => membuat programmer lebih gampang untuk mengimplementasikan OOP
// 1. Encapsulation => mencegah modifikasi data dari luar class
// Cara dicapai: tambahin _ ke depan dari data, dan pakai getter dan setter

// 2. Abstraction => menyembunyikan detail implementasi, jadi hanya menampilkan detail yang penting saja.
// Cara dicapai: keyword abstract

// 3. Inheritance => parent class mewariskan attribute dan method ke child class => kita ga perlu tulis ulang-ulang code
// Cara dicapai: keyword extends

// 4. Polymorphism => banyak bentuk, lebih fleksibel, jadinya tuh kita tidak perlu tulis ulang ulang code
