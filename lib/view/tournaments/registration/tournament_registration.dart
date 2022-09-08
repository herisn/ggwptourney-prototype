import 'package:flutter/material.dart';
import 'package:ggwp_tourney_prototype/components/button.dart';
import 'package:ggwp_tourney_prototype/components/input_bar.dart';
import 'package:ggwp_tourney_prototype/components/tournament_card.dart';
import 'package:ggwp_tourney_prototype/view/tournaments/registration/tournament_payments.dart';

class TournamentRegistration extends StatefulWidget {
  const TournamentRegistration({ Key? key }) : super(key: key);

  @override
  State<TournamentRegistration> createState() => _TournamentRegistrationState();
}

class _TournamentRegistrationState extends State<TournamentRegistration> {
  bool is_checked = false;

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
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Text('Daftar Turnament', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700, fontSize: 18),),
              SizedBox(height: 24,),
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
              SizedBox(height: 14,),
              Text('tanda * wajib diisi', style: TextStyle(color: Colors.red, fontSize: 12),),
              SizedBox(height: 14,),
              const ExpansionTile(
                initiallyExpanded: true,
                iconColor: Colors.red,
                collapsedIconColor: Colors.red,
                title: Text('Informasi Tim', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                children: [
                  InputBar(
                    label: 'Nama Tim',
                    hintText: 'Nama Tim',
                  ),
                  SizedBox(height: 14,),
                  InputBar(
                    label: 'Domisili Tim',
                    hintText: 'Domisili Tim',
                  ),
                  SizedBox(height: 14,),
                  InputBar(
                    label: 'Coach',
                    hintText: 'Nama Coach',
                  ),
                  SizedBox(height: 14,),
                  InputBar(
                    label: 'Email',
                    hintText: 'Email',
                  ),
                  SizedBox(height: 14,),
                  InputBar(
                    label: 'Contact Person',
                    hintText: 'Contact Person',
                  ),
                ],
              ),
              const ExpansionTile(
                iconColor: Colors.red,
                collapsedIconColor: Colors.red,
                title: Text('Daftar Anggota Tim', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                children: [
                  InputBar(
                    label: 'Ketua Tim',
                    hintText: 'Ketua Tim',
                  ),
                  SizedBox(height: 14,),
                  InputBar(
                    label: 'Anggota 1',
                    hintText: 'Anggota 1',
                  ),
                  SizedBox(height: 14,),
                  InputBar(
                    label: 'Anggota 2',
                    hintText: 'Anggota 2',
                  ),
                  SizedBox(height: 14,),
                  InputBar(
                    label: 'Anggota 3',
                    hintText: 'Anggota 3',
                  ),
                  SizedBox(height: 14,),
                  InputBar(
                    label: 'Anggota 4',
                    hintText: 'Anggota 4',
                  ),
                  SizedBox(height: 14,),
                  InputBar(
                    label: 'Anggota 5',
                    hintText: 'Anggota 5',
                    requiredInput: false,
                  ),
                  SizedBox(height: 14,),
                  InputBar(
                    label: 'Anggota 6',
                    hintText: 'Anggota 6',
                    requiredInput: false,
                  ),
                  SizedBox(height: 14,),
                  InputBar(
                    label: 'Anggota 7',
                    hintText: 'Anggota 7',
                    requiredInput: false,
                  ),
                  SizedBox(height: 14,),
                  InputBar(
                    label: 'Anggota 8',
                    hintText: 'Anggota 8',
                    requiredInput: false,
                  ),
                ],
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red,
                    value: is_checked,
                    onChanged: (value){
                      setState(() {
                        is_checked = value!;
                      });
                    }
                  ),
                  Text('Saya telah membaca syarat & ketentuan')
                ],
              ),
              SizedBox(height: 24,),
              PrimaryButton(
                label: 'Daftar',
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TournamentPayments())
                  );
                },
              ),
              SizedBox(height: 24,),
            ],
          ),
        ),
      ),
    );
  }
}