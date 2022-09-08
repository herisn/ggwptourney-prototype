import 'package:flutter/material.dart';
import 'package:ggwp_tourney_prototype/components/tournament_card.dart';
import 'package:ggwp_tourney_prototype/view/tournaments/tournament_detail_3.dart';

class MyTournaments extends StatefulWidget {
  const MyTournaments({ Key? key }) : super(key: key);

  @override
  State<MyTournaments> createState() => _MyTournamentsState();
}

class _MyTournamentsState extends State<MyTournaments> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 10, backgroundColor: Colors.grey,),
                  SizedBox(width: 10,),
                  Text('GGWP.ID Tourney')
                ],
              ),
              SizedBox(height: 24,),
              Text('Tournament Diikuti', style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(height: 24,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 38,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          index = 0;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: index == 0? Colors.red : Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text('Semua', style: TextStyle(color: index == 0? Colors.white : Colors.black),),
                      ),
                    ),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          index = 1;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: index == 1 ? Colors.red : Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text('Hari Ini', style: TextStyle(color: index == 1? Colors.white : Colors.black),),
                      ),
                    ),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          index = 2;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: index == 2 ? Colors.red : Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text('Minggu Ini', style: TextStyle(color: index == 2? Colors.white : Colors.black),),
                      ),
                    ),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          index = 3;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: index == 3 ? Colors.red : Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text('Bulan Ini', style: TextStyle(color: index == 3? Colors.white : Colors.black),),
                      ),
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              SizedBox(height: 24,),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    TournamentCard(
                      title: 'Mobile Legends M3',
                      subtitle: '12 Juli - 30 Juli 2022',
                      image: 'https://i.ibb.co/bvqRRV4/Rectangle-5-1.png',
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> TournamentDetail3())
                        );
                      },
                    ),
                    TournamentCard(
                      title: 'MPL S10',
                      subtitle: '12 Juli - 30 Juli 2022',
                      image: 'https://i.ibb.co/bvqRRV4/Rectangle-5-1.png',
                      onTap: () {},
                    ),
                    TournamentCard(
                      title: 'MSC 2023',
                      subtitle: '12 Juli - 30 Juli 2023',
                      image: 'https://i.ibb.co/bvqRRV4/Rectangle-5-1.png',
                      onTap: () {},
                    ),
                    TournamentCard(
                      title: 'Mobile Legends Cup',
                      subtitle: '12 Juli - 30 Juli 2022',
                      image: 'https://i.ibb.co/bvqRRV4/Rectangle-5-1.png',
                      onTap: () {},
                    ),
                    TournamentCard(
                      title: 'MLBB Bandung Exebition',
                      subtitle: '12 Juli - 30 Juli 2022',
                      image: 'https://i.ibb.co/bvqRRV4/Rectangle-5-1.png',
                      onTap: () {},
                    ),
                    TournamentCard(
                      title: 'MLBB Legends Arena',
                      subtitle: '12 Juli - 30 Juli 2022',
                      image: 'https://i.ibb.co/bvqRRV4/Rectangle-5-1.png',
                      onTap: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}