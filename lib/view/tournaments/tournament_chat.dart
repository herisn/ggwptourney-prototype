import 'package:flutter/material.dart';
import 'package:ggwp_tourney_prototype/view/tournaments/tournament_schedules.dart';

class TournamentChat extends StatelessWidget {
  const TournamentChat({ Key? key }) : super(key: key);

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
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.grey[200],
            ),
            Positioned(
              top: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.grey,
                                child: Image.network('https://i.ibb.co/Sf08vBG/Ellipse-4.png',),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFD33131),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                width: MediaQuery.of(context).size.width-174,
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Admin', style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 10),),
                                    Text('Halo semua! Selamat bergabung ke dalam grup chat khsusus Tournament Mobile Legends M3', style: TextStyle(color: Colors.white),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text('13.25', style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 10),),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24,),
                    Container(
                      width: MediaQuery.of(context).size.width-48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                width: MediaQuery.of(context).size.width/3,
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Anda', style: TextStyle(color: Colors.red.withOpacity(0.8), fontSize: 10),),
                                    Text('Baik!', style: TextStyle(color: Colors.red),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text('13.25', style: TextStyle(color: Colors.red.withOpacity(0.8), fontSize: 10),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.grey,
                                child: Image.network('https://i.ibb.co/yqQg2Cn/Ellipse-4-1.png',),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: 130,
              child: Padding(
                padding: const EdgeInsets.only(left: 24,right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Group Chat', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700, fontSize: 18),),
                    SizedBox(height: 24,),
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
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.image, size: 34, color: Colors.grey,),
                      Container(
                        width: MediaQuery.of(context).size.width-100,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Ketik disini',
                            filled: true,
                            prefixIcon: Icon(Icons.emoji_emotions, color: Colors.grey,),
                            suffixIcon: Icon(Icons.send, color: Colors.grey,),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}