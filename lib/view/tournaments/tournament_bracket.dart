import 'package:flutter/material.dart';
import 'package:ggwp_tourney_prototype/view/tournaments/tournament_schedules.dart';

class TournamentBracket extends StatelessWidget {
  const TournamentBracket({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey,),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24,right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                            image: NetworkImage('https://i.ibb.co/bvqRRV4/Rectangle-5-1.png'),
                            fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.red, width: 2)
                        ),
                      ),
                      SizedBox(width: 14,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Mobile Legends M3', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                          SizedBox(height: 8,),
                          Text('12 Juli - 30 Juli 2022')
                        ],
                      ),
                    ],
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.red,
                      onSurface: Colors.red,
                      padding: EdgeInsets.fromLTRB(10, 14, 10, 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      side: BorderSide(color: Colors.red)
                    ),
                    child: Text('Lihat Jadwal', style: TextStyle(fontSize: 14),),
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> TournamentSchedules())
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 24,),
              Text('Bracket Pertandingan', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700, fontSize: 18),),
              SizedBox(height: 24,),
              Image.network('https://i.ibb.co/k8dJ0K7/Frame-8.png', fit: BoxFit.cover,),
            ],
          ),
        ),
      ),
    );
  }
}