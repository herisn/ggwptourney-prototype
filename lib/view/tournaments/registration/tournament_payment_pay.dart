import 'package:flutter/material.dart';
import 'package:ggwp_tourney_prototype/components/button.dart';
import 'package:ggwp_tourney_prototype/view/tournaments/registration/tournament_payment_success.dart';

class TournamentPaymentPay extends StatelessWidget {
  const TournamentPaymentPay({ Key? key }) : super(key: key);

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
                    SizedBox(height: 24,),
                    Center(
                      child: Column(
                        children: [
                          Text('Selesaikan Pembayaranmu sebelum'),
                          Text('23:59:59', style: TextStyle(color: Colors.red, fontSize: 18),),
                        ],
                      ),
                    ),
                    SizedBox(height: 24,),
                    Text('Nominal'),
                    SizedBox(height: 14,),
                    TextFormField(
                      readOnly: true,
                      initialValue: 'Rp. 3.500.000',
                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,),
                      decoration: InputDecoration(
                        filled: true,
                        suffixIcon: Icon(Icons.copy),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                    ),
                    SizedBox(height: 14,),
                    Text('BRIVA Number'),
                    SizedBox(height: 14,),
                    TextFormField(
                      readOnly: true,
                      initialValue: '503109210801295',
                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,),
                      decoration: InputDecoration(
                        filled: true,
                        suffixIcon: Icon(Icons.copy),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                    ),
                    SizedBox(height: 24,),
                    Text('Selesaikan pembayaranmu sebelum waktu yang ditentukan. Jika belum menyelesaikan pembayaran hingga waktu yang ditentukan maka pendaftaranmu akan dibatalkan.'),
                    SizedBox(height: 24,),
                  ],
                ),
                Positioned(
                  bottom: 24,
                  child: Container(
                    width: MediaQuery.of(context).size.width-48,
                    child: PrimaryButton(
                      label: 'Selesaikan Pembayaran',
                      primary: false,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => TournamentPaymentSuccess())
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