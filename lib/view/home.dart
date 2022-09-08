import 'package:flutter/material.dart';
import 'package:ggwp_tourney_prototype/components/category_card.dart';
import 'package:ggwp_tourney_prototype/components/search_bar.dart';
import 'package:ggwp_tourney_prototype/components/tournament_card.dart';

import 'tournaments/tournament_all.dart';
import 'tournaments/tournament_detail.dart';

class HomePage extends StatelessWidget {
  HomePage({ Key? key }) : super(key: key);
  
  List<String> images = [
    'https://i.ibb.co/vkgJjHt/Vector.png',
    'https://i.ibb.co/3d2dbx0/image-2.png',
    'https://i.ibb.co/kMs9M9T/image-3.png',
    'https://i.ibb.co/cCCPPb3/image-4.png',
    'https://i.ibb.co/5MFv2HP/image-5.png',
    'https://i.ibb.co/yWxg4J1/image-6.png',
    'https://i.ibb.co/v1zJ4Rj/image-7.png',
    'https://i.ibb.co/Xkd8wPY/image-8.png',
    'https://i.ibb.co/9qNjDTm/image-9.png',
    'https://i.ibb.co/g7GjDSL/image-10.png'
  ];

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
              SearchBar(),
              SizedBox(height: 24,),
              Text('Kategori Turnament', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),),
              SizedBox(height: 14,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryCard(
                        image: images[0],
                        label: 'semua',
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=> TournamentAll())
                          );
                        },
                        child: CategoryCard(
                          image: images[1],
                          label: 'MLBB',
                        ),
                      ),
                      CategoryCard(
                        image: images[2],
                        label: 'AOV',
                      ),
                      CategoryCard(
                        image: images[3],
                        label: 'FF',
                      ),
                      CategoryCard(
                        image: images[4],
                        label: 'PUBG',
                      ),
                    ],
                  ),
                  SizedBox(height: 14,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryCard(
                        image: images[5],
                        label: 'Valorant',
                      ),
                      CategoryCard(
                        image: images[6],
                        label: 'Dota 2',
                      ),
                      CategoryCard(
                        image: images[7],
                        label: 'CS:GO',
                      ),
                      CategoryCard(
                        image: images[8],
                        label: 'CODM',
                      ),
                      CategoryCard(
                        image: images[9],
                        label: 'APEX',
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24,),
              Text('Tournament Sedang Berlangsung', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),),
              SizedBox(height: 14,),
              Flexible(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    TournamentCard(
                      title: 'PUBG Invitational',
                      subtitle: '12 Juli - 30 Juli 2020',
                      image: 'https://i.ibb.co/ZTbM52v/Rectangle-5.png',
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> TournamentDetail())
                        );
                      },
                    ),
                    TournamentCard(
                      title: 'Mobile Legends M3',
                      subtitle: '12 Juli - 30 Juli 2020',
                      image: 'https://i.ibb.co/bvqRRV4/Rectangle-5-1.png',
                      onTap: (){},
                    ),
                    TournamentCard(
                      title: 'Dota 2 Major',
                      subtitle: '12 Juli - 30 Juli 2020',
                      image: 'https://i.ibb.co/DR6jgsn/Rectangle-5-2.png',
                      onTap: (){},
                    ),
                    TournamentCard(
                      title: 'Turnament FF Bandung',
                      subtitle: '12 Juli - 30 Juli 2020',
                      image: 'https://i.ibb.co/Htp0J2j/Rectangle-5-3.png',
                      onTap: (){},
                    ),
                    TournamentCard(
                      title: 'Turnament FF Solo',
                      subtitle: '12 Juli - 30 Juli 2020',
                      image: 'https://i.ibb.co/Htp0J2j/Rectangle-5-3.png',
                      onTap: (){},
                    ),
                    TournamentCard(
                      title: 'Valorant Open 2020',
                      subtitle: '12 Juli - 30 Juli 2020',
                      image: 'https://i.ibb.co/Htp0J2j/Rectangle-5-3.png',
                      onTap: (){},
                    ),
                    TournamentCard(
                      title: 'CODM Open 2020',
                      subtitle: '12 Juli - 30 Juli 2020',
                      image: 'https://i.ibb.co/Htp0J2j/Rectangle-5-3.png',
                      onTap: (){},
                    ),
                    TournamentCard(
                      title: 'CSGO Open 2020',
                      subtitle: '12 Juli - 30 Juli 2020',
                      image: 'https://i.ibb.co/Htp0J2j/Rectangle-5-3.png',
                      onTap: (){},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}