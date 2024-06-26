import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/widgets/navbar_roots.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool passToggle = true;
  @override
  Widget build(BuildContext context){
    return Material(
      color: Color(0xFFEDF1F6),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset("images/pict2.png"),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter Username"),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  obscureText: passToggle ? true : false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter Password"),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: (){
                        if(passToggle == true){
                          passToggle = false;
                        } else{
                          passToggle = true;
                        }
                        setState(() {});
                      },
                      child: passToggle 
                      ? Icon(CupertinoIcons.eye_slash_fill)
                      : Icon(CupertinoIcons.eye_fill),
                    )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Material(
                    color: Color(0xFF7165D5),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                          builder: (context) => NavBarRoots(),
                        ));
                      },
                      child: Padding(
                        padding: 
                        EdgeInsets.symmetric(vertical: 15, horizontal: 40), 
                        child: Text(
                          "Login", 
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),),
                        ),
                    ),
                  ),
            ],
          )
        ),
      ),
    );
  }
}