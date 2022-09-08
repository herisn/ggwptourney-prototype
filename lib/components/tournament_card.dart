import 'package:flutter/material.dart';

class TournamentCard extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? image;
  final Function()? onTap;
  const TournamentCard({ Key? key,this.title, this.subtitle, this.image, this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 7, bottom: 7),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(image: NetworkImage(image!))
              ),
            ),
            SizedBox(width: 14,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title!, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                Text(subtitle!, style: TextStyle(fontSize: 14),)
              ],
            )
          ],
        ),
      ),
    );
  }
}