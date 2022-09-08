import 'package:flutter/material.dart';
import 'package:ggwp_tourney_prototype/components/category_card.dart';
import 'package:ggwp_tourney_prototype/components/navbar/navbar_button.dart';
import 'package:ggwp_tourney_prototype/components/navbar/navbar_button_active.dart';
import 'package:ggwp_tourney_prototype/components/search_bar.dart';
import 'package:ggwp_tourney_prototype/components/tournament_card.dart';
import 'package:ggwp_tourney_prototype/view/home.dart';
import 'package:ggwp_tourney_prototype/view/my_tournaments.dart';
import 'package:ggwp_tourney_prototype/view/profile/profile_main.dart';
import 'package:ggwp_tourney_prototype/view/ranks/esport_ranks.dart';
import 'package:ggwp_tourney_prototype/view/tournaments/tournament_all.dart';
import 'package:ggwp_tourney_prototype/view/tournaments/tournament_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GGWP Tourney Prototype',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int index = 0;
  bool active = true;

  List<Widget> _pages = [
    HomePage(),
    MyTournaments(),
    EsportRanks(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          _pages[index],
          Positioned(
            bottom: 0,
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero
                ),
                border: Border.all(color: Colors.grey)
              ),
            ),
          ),
          Positioned(
              bottom: 14,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      index == 0
                      ?NavbarButtonActive(
                        icon: Icon(Icons.home,color: Colors.white, size: 40,),
                        label: 'Home',
                      )
                      :NavbarButton(
                        icon: Icon(Icons.home_outlined, size: 50, color: Colors.grey,),
                        onTap: (){
                          setState(() {
                            index = 0;
                          });
                        },
                      ),
                      index == 1
                      ?NavbarButtonActive(
                        icon: Icon(Icons.sports_esports,color: Colors.white, size: 40,),
                        label: 'My Tournament',
                      )
                      :NavbarButton(
                        icon: Icon(Icons.sports_esports_outlined, size: 50, color: Colors.grey,),
                        onTap: (){
                          setState(() {
                            index = 1;
                          });
                        },
                      ),
                      index == 2
                      ?NavbarButtonActive(
                        icon: Icon(Icons.emoji_events,color: Colors.white, size: 40,),
                        label: 'Rankings',
                      )
                      :NavbarButton(
                        icon: Icon(Icons.emoji_events_outlined, size: 45, color: Colors.grey,),
                        onTap: (){
                          setState(() {
                            index = 2;
                          });
                        },
                      ),
                      index == 3
                      ?NavbarButtonActive(
                        icon: Icon(Icons.person,color: Colors.white, size: 40,),
                        label: 'Profile',
                      )
                      :NavbarButton(
                        icon: Icon(Icons.person_outline, size: 50, color: Colors.grey,),
                        onTap: (){
                          setState(() {
                            index = 3;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      )
    );
  }
}
