import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    super.key, required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: 45,
     height: 45,
     child: FloatingActionButton(
     backgroundColor: const Color(0xff5c5b5b),
     onPressed: () {}, 
     child:  Icon(icon)
     ),
      );
  }
}