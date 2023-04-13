import 'package:flutter/material.dart';
import 'package:lesson10_for_loop/model.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key, required this.student});
  final String student;

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
        Text(student),
      ],),
    );
  }
}