import 'package:flutter/material.dart';
import 'package:ggwp_tourney_prototype/components/tournament_card.dart';
import 'package:ggwp_tourney_prototype/view/tournaments/tournament_detail_2.dart';

class TournamentAll extends StatelessWidget {
  const TournamentAll({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage('https://i.ibb.co/K6kLZbq/Group-136.png'),
                  fit: BoxFit.cover,
                )
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: SafeArea(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white.withOpacity(0.4),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white,),
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      SizedBox(height: 14,),
                      Text('Tournament Mobile Legends', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height-180,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Daftar Turnament', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),),
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
                                MaterialPageRoute(builder: (context)=> TournamentDetail2())
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}