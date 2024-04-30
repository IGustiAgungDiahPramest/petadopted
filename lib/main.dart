import 'package:flutter/material.dart';
import 'package:my_app/screens/routes/DatasScreen/datas_screen.dart';
import 'package:my_app/screens/welcome_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WelcomeScreen(),
    initialRoute: '/',
      routes: {
        '/welcome' :(context) => WelcomeScreen(),
        '/datas-screen' :(context) => DatasScreen()
      },
    );
  }
}
