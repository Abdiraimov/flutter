class Student { 
   Student (
    {required this.id,
    required this.name,
    required this.surname,
    required this.age, 
    this.phone,
    required  this.email,
    this.address,
    required this.group,
    this.gender,
    this.married});
  final int id;
  final String name;
  final String surname;
  int age;
  String? phone;
  final String email;
  final String? address;
  int group;
  final String? gender;
  String? married;


}

final Daniyar = Student( id: 1,
  name: 'Daniyar', surname: 'Askarov', age: 19, email: 'example@gmail.com', address: 'asdasd', group: 4, gender: 'Male');

final Dinara = Student(id: 2,
  name: 'Dinara', surname: 'Temirbekova', age: 19, email: 'example@gmail.com', address: 'asdasd', group: 4,);

final Khanzada = Student(id: 3,
  name: 'Khanzada', surname: 'Kanatova', age: 19, email: 'example@gmail.com', address: 'asdasd', group: 4,);

final Begaly = Student(id: 4,
  name: 'Begaly', surname: 'Nurbekov', age: 19, email: 'example@gmail.com', address: 'asdasd', group: 4,);

final students = <Student>[Daniyar, Dinara, Khanzada, Begaly];



