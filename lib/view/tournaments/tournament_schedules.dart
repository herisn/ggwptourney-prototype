import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ggwp_tourney_prototype/components/button.dart';
import 'package:ggwp_tourney_prototype/components/schedule_card.dart';
import 'package:ggwp_tourney_prototype/components/tournament_card.dart';
import 'package:ggwp_tourney_prototype/view/tournaments/tournament_bracket.dart';

class TournamentSchedules extends StatefulWidget {
  const TournamentSchedules({ Key? key }) : super(key: key);

  @override
  State<TournamentSchedules> createState() => _TournamentSchedulesState();
}

class _TournamentSchedulesState extends State<TournamentSchedules> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

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
                    child: Text('Lihat Bracket', style: TextStyle(fontSize: 14),),
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> TournamentBracket())
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 24,),
              Text('Jadwal Pertandingan', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700, fontSize: 18),),
              SizedBox(height: 24,),
              TabBar(
                controller: _tabController,
                indicatorColor: Colors.red,
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    text: 'Mendatang',
                  ),
                  Tab(
                    text: 'Live',
                  ),
                  Tab(
                    text: 'Hasil',
                  ),
                ],
              ),
              Flexible(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView(
                      physics: BouncingScrollPhysics(),
                      children: [
                        SizedBox(height: 24,),
                        ScheduleCard(
                          title: 'Upper Bracket - Match 1',
                          date: 'Sabtu, 23 Juli 2022',
                          score: '-',
                          time: '5:00 PM',
                        ),
                        SizedBox(height: 24,),
                        ScheduleCard(
                          title: 'Upper Bracket - Match 2',
                          date: 'Sabtu, 23 Juli 2022',
                          score: '-',
                          time: '5:00 PM',
                        ),
                        SizedBox(height: 24,),
                        ScheduleCard(
                          title: 'Upper Bracket - Match 3',
                          date: 'Sabtu, 23 Juli 2022',
                          score: '-',
                          time: '5:00 PM',
                        ),
                        SizedBox(height: 24,),
                        ScheduleCard(
                          title: 'Upper Bracket - Match 4',
                          date: 'Sabtu, 23 Juli 2022',
                          score: '-',
                          time: '5:00 PM',
                        ),
                        SizedBox(height: 24,),
                      ],
                    ),

                    ListView(
                      physics: BouncingScrollPhysics(),
                      children: [
                        SizedBox(height: 24,),
                        ScheduleCard(
                          title: 'Upper Bracket - Match 1',
                          date: 'Sabtu, 23 Juli 2022',
                          score: '1 - 0',
                          time: '5:00 PM',
                        ),
                        SizedBox(height: 24,),
                        ScheduleCard(
                          title: 'Upper Bracket - Match 2',
                          date: 'Sabtu, 23 Juli 2022',
                          score: '1 - 1',
                          time: '5:00 PM',
                        ),
                        SizedBox(height: 24,),
                        ScheduleCard(
                          title: 'Upper Bracket - Match 3',
                          date: 'Sabtu, 23 Juli 2022',
                          score: '1 - 0',
                          time: '5:00 PM',
                        ),
                        SizedBox(height: 24,),
                        ScheduleCard(
                          title: 'Upper Bracket - Match 4',
                          date: 'Sabtu, 23 Juli 2022',
                          score: '0 - 0',
                          time: '5:00 PM',
                        ),
                        SizedBox(height: 24,),
                      ],
                    ),

                    ListView(
                      physics: BouncingScrollPhysics(),
                      children: [
                        SizedBox(height: 24,),
                        ScheduleCard(
                          title: 'Upper Bracket - Match 1',
                          date: 'Sabtu, 23 Juli 2022',
                          score: '1 - 2',
                          time: 'Selesai',
                        ),
                        SizedBox(height: 24,),
                        ScheduleCard(
                          title: 'Upper Bracket - Match 2',
                          date: 'Sabtu, 23 Juli 2022',
                          score: '2 - 1',
                          time: 'Selesai',
                        ),
                        SizedBox(height: 24,),
                        ScheduleCard(
                          title: 'Upper Bracket - Match 3',
                          date: 'Sabtu, 23 Juli 2022',
                          score: '1 - 2',
                          time: 'Selesai',
                        ),
                        SizedBox(height: 24,),
                        ScheduleCard(
                          title: 'Upper Bracket - Match 4',
                          date: 'Sabtu, 23 Juli 2022',
                          score: '2 - 0',
                          time: 'Selesai',
                        ),
                        SizedBox(height: 24,),
                      ],
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