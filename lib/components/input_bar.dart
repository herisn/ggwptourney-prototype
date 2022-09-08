import 'package:flutter/material.dart';

class InputBar extends StatelessWidget {
  final String? hintText;
  final String? label;
  final bool? requiredInput;
  const InputBar({ Key? key, this.hintText, this.label, this.requiredInput = true }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(label!,),
            requiredInput!? Text('*', style: TextStyle(color: Colors.red)) : Container()
          ],
        ),
        SizedBox(height: 10,),
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText!,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            )
          ),
        ),
      ],
    );
  }
}