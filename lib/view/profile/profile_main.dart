import 'package:flutter/material.dart';
import 'package:ggwp_tourney_prototype/view/profile/support.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

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
              Text('Profile', style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                          image: DecorationImage(image: NetworkImage('https://i.ibb.co/J5d7tq7/Ellipse-13.png'), fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(width: 14,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Jonathan Mcarty', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          Text('jonathanmcarty@gmail.com', style: TextStyle(fontSize: 12, color: Colors.grey),)
                        ],
                      )
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: Icon(Icons.edit, color: Colors.grey,)
                  )
                ],
              ),
              SizedBox(height: 24,),
              Divider(thickness: 1,),
              SizedBox(height: 24,),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.only(top: 14, bottom: 14),
                  child: Row(
                    children: [
                      Icon(Icons.article_outlined),
                      SizedBox(width: 14,),
                      Text('Syarat dan Ketentuan')
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.only(top: 14, bottom: 14),
                  child: Row(
                    children: [
                      Icon(Icons.policy_outlined),
                      SizedBox(width: 14,),
                      Text('Kebijakan Privacy')
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SupportPage())
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 14, bottom: 14),
                  child: Row(
                    children: [
                      Icon(Icons.support_agent_outlined),
                      SizedBox(width: 14,),
                      Text('Bantuan')
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.only(top: 14, bottom: 14),
                  child: Row(
                    children: [
                      Icon(Icons.logout_outlined, color: Colors.red,),
                      SizedBox(width: 14,),
                      Text('Logout', style: TextStyle(color: Colors.red),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24,),
              Divider(thickness: 1,),
              SizedBox(height: 24,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Ikuti Kami', style: TextStyle(fontSize: 10, color: Colors.grey),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook, color: Colors.blue, size: 40,),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.network('https://i.ibb.co/J2Yvc9q/Group-117.png')
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.network('https://i.ibb.co/Wk0KCCn/Vector-1.png')
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.network('https://i.ibb.co/F6QhKYG/Vector-2.png')
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.network('https://i.ibb.co/QYVGhWJ/Group-118.png')
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}