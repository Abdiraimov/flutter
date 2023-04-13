import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key, required this.containerdinTexti, required this.containerdinTexti2, this.icon, required this.image,});
    final String containerdinTexti, containerdinTexti2;
  final IconData? icon;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 120, top: 15),
      height: 90,
      width: double.infinity,
      color: Colors.grey,
      child: Row(
        children: [
          Column(
            
            children:  [
              Text(containerdinTexti),
              Text(containerdinTexti2),
              Icon(icon),
                
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          Column(
            children: [
            Image.network(image,
            width: 50,
            height: 50,),
      
          ],)
        ],
      ),
    );
  }
}