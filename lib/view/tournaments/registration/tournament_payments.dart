import 'package:flutter/material.dart';
import 'package:ggwp_tourney_prototype/components/button.dart';
import 'package:ggwp_tourney_prototype/view/tournaments/registration/tournament_payment_pay.dart';

class TournamentPayments extends StatelessWidget {
  const TournamentPayments({ Key? key }) : super(key: key);

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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('Rp. 3.500.000')
                      ],
                    ),
                    SizedBox(height: 24,),
                    Text('Metode Pembayaran', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700, fontSize: 14),),
                    SizedBox(height: 14,),
                    TextFormField(
                      initialValue: 'BRIVA',
                      readOnly: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 24,
                  left: 0,
                  child: PrimaryButton(
                    label: 'Bayar',
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TournamentPaymentPay())
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}