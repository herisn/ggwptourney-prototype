import 'package:flutter/material.dart';
import 'package:ggwp_tourney_prototype/components/button.dart';
import 'package:ggwp_tourney_prototype/view/tournaments/registration/tournament_registration.dart';
import 'package:ggwp_tourney_prototype/view/tournaments/tournament_chat.dart';
import 'package:ggwp_tourney_prototype/view/tournaments/tournament_schedules.dart';

class TournamentDetail3 extends StatelessWidget {
  const TournamentDetail3({ Key? key }) : super(key: key);

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
                  image: NetworkImage('https://i.ibb.co/rF6KjTg/Group-137.png'),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      CircleAvatar(
                        backgroundColor: Colors.white.withOpacity(0.4),
                        child: IconButton(
                          icon: Icon(Icons.more_horiz, color: Colors.white,),
                          onPressed: (){},
                        ),
                      ),
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
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.height-200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              image: DecorationImage(
                                image: NetworkImage('https://i.ibb.co/bvqRRV4/Rectangle-5-1.png'),
                                fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.circular(20),
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
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.height-270,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24, right: 24),
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          children: [
                            Text('Total Price', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),),
                            Text('Rp. 1.000.000.000'),
                            SizedBox(height: 14,),
                            Text('Registration Fee', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),),
                            Text('Rp. 3.500.000'),
                            SizedBox(height: 14,),
                            Text('Kuota', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),),
                            Row(
                              children: [
                                Icon(Icons.person),
                                Text('3/8'),
                              ],
                            ),
                            SizedBox(height: 14,),
                            Text('Location', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),),
                            Text('Japan'),
                            SizedBox(height: 14,),
                            Text('Description', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),),
                            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Leo arcu volutpat suspendisse amet suspendisse turpis diam, vivamus elit. Lacus pretium vitae leo eget iaculis est, mattis commodo. Vitae nunc vitae, urna egestas mattis suspendisse vel. Dui non pretium condimentum tortor ac.'),
                            SizedBox(height: 14,),
                            Text('Rules', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.circle, size: 10,),
                                    SizedBox(width: 10,),
                                    Text('8 Total Teams'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.circle, size: 10,),
                                    SizedBox(width: 10,),
                                    Text('Qualification using BO3 and final using BO5'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.circle, size: 10,),
                                    SizedBox(width: 10,),
                                    Text('Upper and Lower Bracket Format'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24, right: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PrimaryButton(
                              label: 'Chat',
                              onPressed: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context)=> TournamentChat())
                                );
                              },
                            ),
                            PrimaryButton(
                              label: 'Lihat Jadwal',
                              primary: false,
                              onPressed: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context)=> TournamentSchedules())
                                );
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}