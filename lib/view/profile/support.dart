import 'package:flutter/material.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({ Key? key }) : super(key: key);

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Bantuan', style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),),
                SizedBox(height: 24,),
                Text('Butuh bantuan seputar aplikasi?', style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 14,),
                TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: 'Ketik Pertanyaanmu',
                    suffixIcon: Icon(Icons.search, color: Colors.grey,),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                ),
                SizedBox(height: 24,),
                Text('Pertanyan sering muncul', style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 14,),
                Text('Bagaimana cara mengganti password?', style: TextStyle(color: Colors.blue),),
                SizedBox(height: 14,),
                Text('Bagaimana cara mendaftar turnament?', style: TextStyle(color: Colors.blue),),
                SizedBox(height: 14,),
                Text('Mengatasi jadwal yang tidak muncul?', style: TextStyle(color: Colors.blue),),
                SizedBox(height: 24,),

                Text('Topik', style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 14,),
                Text('Tournament', style: TextStyle(color: Colors.blue),),
                SizedBox(height: 14,),
                Text('Jadwal', style: TextStyle(color: Colors.blue),),
                SizedBox(height: 14,),
                Text('Peringkat', style: TextStyle(color: Colors.blue),),
                SizedBox(height: 14,),
                Text('Registrasi', style: TextStyle(color: Colors.blue),),
                SizedBox(height: 14,),
                Text('Pembayaran', style: TextStyle(color: Colors.blue),),
                SizedBox(height: 14,),
                Text('User Profile', style: TextStyle(color: Colors.blue),),
                SizedBox(height: 14,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}