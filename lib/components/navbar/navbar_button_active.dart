import 'package:flutter/material.dart';

class NavbarButtonActive extends StatelessWidget {
  final Icon? icon;
  final String? label;
  const NavbarButtonActive({ Key? key, this.icon, this.label }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(width: 8, color: Colors.white),
            shape: BoxShape.circle
          ),
          child: icon!
        ),
        SizedBox(height: 6,),
        Text(label!, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
      ],
    );
  }
}