import 'package:flutter/material.dart';
import 'package:my_app/screens/login_screen.dart';
import 'package:my_app/widgets/navbar_roots.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      color: Color(0xFFEDF1F6),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15,),
            Align(
              alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                builder: (context) => NavBarRoots(),
                ));
              }, 
              child: Text("SKIP",
              style: TextStyle(
                color: Color(0xFF7165D6),
                fontSize: 20,
              ),
              )
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.asset("images/pict1.png"),
              ),
              SizedBox(height: 10,),
              Text("Find Your Next Best Friend",
              style: TextStyle(
                color: Color(0xFF7165d6),
                fontSize: 27,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
              ),
              SizedBox(height: 10,),
              Text("we will help you to choose your lovely pet",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              ), 
              SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    color: Color(0xFF7165D5),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context, MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                        ));
                      },
                      child: Padding(
                        padding: 
                        EdgeInsets.symmetric(vertical: 15, horizontal: 50), 
                        child: Text("Login", style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        
                        ),
                    ),
                  )
                ],
              )
          ],
          ),
      ),
    );
  }
}