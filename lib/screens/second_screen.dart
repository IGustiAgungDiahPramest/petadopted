import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF1C2135),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 25,
                    ),
                )
              ],
            ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(radius: 100,
                    backgroundImage: AssetImage("images/anjing2.jpeg"),
                    ),
                    SizedBox(height:15),
                    Text("Casper",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    ),
                    SizedBox(height: 3,),
                    Text("Male - 3 years old",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFF9F9FE2),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.heart_broken,
                            size: 25,
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFF9F9FE2),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            CupertinoIcons.heart_fill,
                            size: 25,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                ),
            ],
          ),
          ),
            SizedBox(height: 20,),
                Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(height: 5,),
                      ListTile(
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            CupertinoIcons.archivebox,
                            color: Colors.blueGrey,
                            size: 20,
                          ),
                        ),
                        title: Text("About Casper",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                        ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                      ),
                      ),
                      SizedBox(height: 5,),
                      ListTile(
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.red.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            CupertinoIcons.cloud_sleet,
                            color: Colors.red,
                            size: 20,
                          ),
                        ),
                        title: Text("Reason",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                        ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                      ),
                      ),
                        SizedBox(height: 15,),
                        Text("Location",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                        ListTile(
                          leading: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xFF0EEFA), 
                              shape: BoxShape.circle
                            ),
                            child: Icon(
                              Icons.location_on,
                              color: Color(0xFF7165D6),
                              size: 30,
                            ),
                          ),
                          title: Text("Gianyar, Bali",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          subtitle: Text("address line of the pet house"),
                        ),
                    ],
                  ),
                ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              spreadRadius: 2,
            )
          ]
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Go adopt your friend now",
                style: TextStyle(
                  color: Colors.black54,
                ),
                )
              ],
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: Color(0xFF1C2135),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("Adopt Me",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}