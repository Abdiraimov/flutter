import 'package:flutter/material.dart';
import 'package:lesson10_for_loop/model.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key, required this.student});
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(child: Text('UserPage', style: TextStyle(color: Colors.black),)),
      ),
      body: Column(
        children: [
        Center(
          child: CircleAvatar(
            radius: 70,
            backgroundImage: NetworkImage(student.image)),
        ),
        Text(student.id.toString()),
        Text(student.name),
        Text(student.surname),
        Text(student.email),
        Text(student.age.toString()),
        Text(student.address.toString()),
        Text(student.group.toString()),
        Text(student.gender.toString()),
        Text(student.married ?? 'Пустой'),
        
        
      ],),
    );
  }
}