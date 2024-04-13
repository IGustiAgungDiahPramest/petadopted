import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(top: 50,),
      child: Container(
        color: Color(0xFF8794C0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Settings",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
          ),
          SizedBox(height: 30,),
          ListTile(
            leading: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("images/gdiah.jpeg"),
            ),
            title: Text("User Settings",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),
            ),
            subtitle: Text("Profile"),
          ),
          Divider(height: 50,),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                CupertinoIcons.person,
                color: Colors.blue,
                size: 35,
              ),
            ),
            title: Text("Profile",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(height: 20,),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.notifications_none_outlined,
                color: Colors.deepPurple,
                size: 35,
              ),
            ),
            title: Text("Notifications",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(height: 20,),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.indigo.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.flag,
                color: Colors.indigo,
                size: 35,
              ),
            ),
            title: Text("Languange",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(height: 20,),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.privacy_tip,
                color: Colors.green,
                size: 35,
              ),
            ),
            title: Text("Privacy",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(height: 20,),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.question_mark,
                color: Colors.orange,
                size: 35,
              ),
            ),
            title: Text("About Us",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(height: 20,),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.red.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.logout,
                color: Colors.red,
                size: 35,
              ),
            ),
            title: Text("LogOut",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
        ],
      ),
    ),
    );
  }
}