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

final daniyar = Student( id: 1,
  name: 'Daniyar', surname: 'Askarov', age: 19, email: 'daniyar@mail', address: 'asdasd', group: 4, gender: 'Male');

final dinara = Student(id: 2,
  name: 'Dinara', surname: 'Temirbekova', age: 19, email: 'dinara@mail', address: 'asdasd', group: 4,);

final khanzada = Student(id: 3,
  name: 'Khanzada', surname: 'Kanatova', age: 19, email: 'khanzada@mail', address: 'asdasd', group: 4,);

final begaly = Student(id: 4,
  name: 'Begaly', surname: 'Nurbekov', age: 19, email: 'begaly@mail', address: 'asdasd', group: 4,);

final students = <Student>[daniyar, dinara, khanzada, begaly];



