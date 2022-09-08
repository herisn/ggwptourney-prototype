import 'package:flutter/material.dart';
import 'package:ggwp_tourney_prototype/components/button.dart';
import 'package:ggwp_tourney_prototype/main.dart';

class TournamentPaymentSuccess extends StatelessWidget {
  const TournamentPaymentSuccess({ Key? key }) : super(key: key);

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
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pembayaran', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700, fontSize: 18),),
                    SizedBox(height: 24,),
                    Text('Tournament:', style: TextStyle(color: Colors.grey),),
                    Text('Mobile Legends M3'),
                    SizedBox(height: 64,),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width-48,
                        padding: EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            Text('Pembayaranmu Berhasil', style: TextStyle(color: Colors.green),),
                            SizedBox(height: 24,),
                            Icon(Icons.check_circle, size: 100, color: Colors.green,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 24,
                  child: Container(
                    width: MediaQuery.of(context).size.width-48,
                    child: PrimaryButton(
                      label: 'Kembali ke Halaman Utama',
                      primary: false,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => MyHomePage())
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}