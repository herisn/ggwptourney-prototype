import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final String? title;
  final String? date;
  final String? score;
  final String? time;
  const ScheduleCard({ Key? key, this.title, this.date, this.score, this.time }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title!, style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),),
                    Text(date!),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(
                              image: NetworkImage('https://i.ibb.co/wRrCFGS/Rectangle-21.png'),
                              fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(height: 14,),
                        Text('Evos')
                      ],
                    ),
                    score! == '-' || time! == 'Selesai' ? Text(score!, style: TextStyle(fontWeight: FontWeight.bold),) : Text(score!, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(
                              image: NetworkImage('https://i.ibb.co/ZgFyd46/Rectangle-21-1.png'),
                              fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(height: 14,),
                        Text('RRQ')
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
              ),
              child: Text(time!, style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}