import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String? image;
  final String? label;
  const CategoryCard({ Key? key, this.image, this.label }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(),
            image: DecorationImage(image: NetworkImage(image!)),
            borderRadius: BorderRadius.circular(10)
          ),
        ),
        SizedBox(height: 8,),
        Text(label!)
      ],
    );
  }
}