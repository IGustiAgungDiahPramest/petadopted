import 'package:flutter/material.dart';
import 'package:my_app/screens/aboutUs_screen.dart';
import 'package:my_app/screens/crud_screen.dart';
import 'package:my_app/screens/news_screen.dart';
import 'package:my_app/screens/routes/DatasScreen/datas_screen.dart';
import 'package:my_app/screens/second_screen.dart';
import 'package:my_app/screens/welcome_screen.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('drawer'),
      ),
        drawer: Drawer(
        child: ListView(
        padding: EdgeInsets.zero,
    // Important: Remove any padding from the ListView.
    
    children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('GungDiah'),
              accountEmail: Text('gungdiahpramesti@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/gdiah.jpeg'),
              ),
              decoration: BoxDecoration(color: Color(0xFF1C2135)),
            ),
      ListTile(
        leading: Icon(Icons.newspaper),
        title: const Text('Latihan API'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen(),
          ) 
          );
        },
      ),
      ListTile(
        leading: Icon(Icons.search_off),
        title: const Text('Latihan CRUD SQLITE'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CrudScreen(),
          )
          );
        },
      ),
      ListTile(
        leading: Icon(Icons.list_alt_outlined),
        title: const Text('Datas Screen'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DatasScreen(),
          )
          );
        },
      ),
      ListTile(
        leading: Icon(Icons.support_agent),
        title: const Text('Customer Support'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DatasScreen(),
          )
          );
        },
      ),
      Divider(height: 10,),
       ListTile(
        leading: Icon(Icons.info_outline),
        title: const Text('About Us'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsScreen(),
          ) 
          );
        },
      ), 
      ListTile(
        leading: Icon(Icons.logout),
        title: const Text('Logout'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen(),
          ) 
          );
        },
      ), 
    ],
  ),
      ),
    body:  SingleChildScrollView(
      child: Container(
        color: Color(0xFF8794C0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello Friends",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/gdiah.jpeg"),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Color(0xFFF3F3F3),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search your favourite pet here...",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              )
            ],
          ),
          
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFF5A6794),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      )
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset("images/anjing5.jpeg",
                    width: 100,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  )
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFF5A6794),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset("images/kucing5.jpeg",
                    width: 100,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text("Lets choose your pet",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
           ),
          ),
          
          Row(
            children: [
              InkWell(
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: ((context) => SecondScreen())
                          )
                          );
                    },
                    child: Container(
                      margin: EdgeInsets.all(18),
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                      decoration: BoxDecoration(
                        color: Color(0xFF1C2135),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            spreadRadius: 4,
                          )
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("images/anjing2.jpeg",
                          width: 160,
                          height: 170,
                          fit: BoxFit.cover,
                          ),
                          Text("Casper",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white70,
                          ),
                          ),
                          Text("Male",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                      decoration: BoxDecoration(
                        color: Color(0xFF1C2135),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            spreadRadius: 4,
                          )
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("images/kucing3.jpeg",
                          width: 160,
                          height: 170,
                          fit: BoxFit.cover,
                          ),
                          Text("Milo",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white70
                          ),
                          ),
                          Text("Female",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                          ),
                        ],
                      ),
                      ),
                      )
                    ],
                  ),
            ],
          ),
        ],
      ),
    ),
    ),
    );
  }
}