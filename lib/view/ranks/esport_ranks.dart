import 'package:flutter/material.dart';

class EsportRanks extends StatefulWidget {
  const EsportRanks({ Key? key }) : super(key: key);

  @override
  State<EsportRanks> createState() => _EsportRanksState();
}

class _EsportRanksState extends State<EsportRanks> {
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
              Text('Esport Rankings', style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),),
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
                        child: Text('Mobile Legends 5v5', style: TextStyle(color: index == 0? Colors.white : Colors.black),),
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
                        child: Text('Mobile Legends 1v1', style: TextStyle(color: index == 1? Colors.white : Colors.black),),
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
                        child: Text('Free Fire Solo', style: TextStyle(color: index == 2? Colors.white : Colors.black),),
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
                        child: Text('Free Fire Squad', style: TextStyle(color: index == 3? Colors.white : Colors.black),),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Center(
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                        border: Border.all(color: Colors.orange, width: 2),
                                        image: DecorationImage(image: NetworkImage('https://i.ibb.co/xLvFr1L/Ellipse-6.png'))
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(radius: 10, backgroundColor: Colors.orange, child: Text('1', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),)
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('RRQ', style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('800 pts', style: TextStyle(color: Colors.red),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 130,
                              width: 130,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Center(
                                    child: Container(
                                      height: 110,
                                      width: 110,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                        border: Border.all(color: Colors.orange, width: 2),
                                        image: DecorationImage(image: NetworkImage('https://i.ibb.co/N23V5Gg/Ellipse-5.png'))
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(radius: 10, backgroundColor: Colors.orange, child: Text('1', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),)
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Evos Legends', style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('1203 pts', style: TextStyle(color: Colors.red),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Center(
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                        border: Border.all(color: Colors.orange, width: 2),
                                        image: DecorationImage(image: NetworkImage('https://i.ibb.co/WVcqbyR/Ellipse-7.png'))
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(radius: 10, backgroundColor: Colors.orange, child: Text('1', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),)
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Onic Esports', style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('768 pts', style: TextStyle(color: Colors.red),)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 24,),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('4', style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(width: 14,),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 26,
                                      child: Image.network('https://i.ibb.co/sRPdrdw/Ellipse-8.png'),
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Alter Ego Esports'),
                                        Text('650 pts', style: TextStyle(color: Colors.red),)
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green[50],
                                borderRadius: BorderRadius.circular(6)
                              ),
                              child: Icon(Icons.arrow_drop_up_outlined, color: Colors.green, size: 32,),
                            )
                          ],
                        ),
                        SizedBox(height: 24,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('5', style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(width: 14,),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 26,
                                      child: Image.network('https://i.ibb.co/sRPdrdw/Ellipse-8.png'),
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Bigetron'),
                                        Text('650 pts', style: TextStyle(color: Colors.red),)
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red[50],
                                borderRadius: BorderRadius.circular(6)
                              ),
                              child: Icon(Icons.arrow_drop_down_outlined, color: Colors.red, size: 32,),
                            )
                          ],
                        ),
                        SizedBox(height: 24,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('6', style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(width: 14,),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 26,
                                      child: Image.network('https://i.ibb.co/sRPdrdw/Ellipse-8.png'),
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Aura'),
                                        Text('650 pts', style: TextStyle(color: Colors.red),)
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green[50],
                                borderRadius: BorderRadius.circular(6)
                              ),
                              child: Icon(Icons.arrow_drop_up_outlined, color: Colors.green, size: 32,),
                            )
                          ],
                        ),
                        SizedBox(height: 24,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('7', style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(width: 14,),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 26,
                                      child: Image.network('https://i.ibb.co/sRPdrdw/Ellipse-8.png'),
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Geek Fam'),
                                        Text('650 pts', style: TextStyle(color: Colors.red),)
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(6)
                              ),
                              child: Icon(Icons.horizontal_rule, color: Colors.grey, size: 32,),
                            )
                          ],
                        ),
                        SizedBox(height: 24,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('8', style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(width: 14,),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 26,
                                      child: Image.network('https://i.ibb.co/sRPdrdw/Ellipse-8.png'),
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Rebellion'),
                                        Text('650 pts', style: TextStyle(color: Colors.red),)
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red[50],
                                borderRadius: BorderRadius.circular(6)
                              ),
                              child: Icon(Icons.arrow_drop_down_outlined, color: Colors.red, size: 32,),
                            )
                          ],
                        ),
                        SizedBox(height: 24,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('9', style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(width: 14,),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 26,
                                      child: Image.network('https://i.ibb.co/sRPdrdw/Ellipse-8.png'),
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Aerowolf'),
                                        Text('650 pts', style: TextStyle(color: Colors.red),)
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red[50],
                                borderRadius: BorderRadius.circular(6)
                              ),
                              child: Icon(Icons.arrow_drop_down_outlined, color: Colors.red, size: 32,),
                            )
                          ],
                        ),
                        SizedBox(height: 100,),
                      ],
                    )
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