import 'package:flutter/material.dart';

class Student { 
   Student ( 
    {required this.id,
    required this.image,
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
  final String image;
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

final daniyar = Student( id: 1, image: 'https://cdn-icons-png.flaticon.com/512/5556/5556468.png' ,
  name: 'Daniyar', surname: 'Askarov', age: 19, email: 'daniyar@mail', address: 'asdasd', group: 4, gender: 'Male');

final dinara = Student(id: 2, image: 'https://images.unsplash.com/photo-1618082382324-e0bd4b48e85b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
  name: 'Dinara', surname: 'Temirbekova', age: 19, email: 'dinara@mail', address: 'asdasd', group: 4,);

final khanzada = Student(id: 3, image: 'https://images.unsplash.com/photo-1618082382324-e0bd4b48e85b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
  name: 'Khanzada', surname: 'Kanatova', age: 19, email: 'khanzada@mail', address: 'asdasd', group: 4,);

final begaly = Student(id: 4, image: 'https://images.unsplash.com/photo-1618082382324-e0bd4b48e85b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
  name: 'Begaly', surname: 'Nurbekov', age: 19, email: 'begaly@mail', address: 'asdasd', group: 4,married: 'single');

final students = <Student>[daniyar, dinara, khanzada, begaly];



