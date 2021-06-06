import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.black,
          )
        ],
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "   Ecom App UI",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Image.asset("assets/profile.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Affan",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21.0,
                        ),
                      ),
                      Text(
                        "affanmurtaza3@gmail.com",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                        ),
                      ),
                      Text(
                        "logout",
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              "  ACCOUNT INFORMATION",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: Text(
                    "Mohammad Affan Murtaza",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Text("User"),
                  trailing: Icon(Icons.edit),
                ),
                ListTile(
                  title: Text(
                    "Email",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Text("affanmurtaza3@gmail.com"),
                ),
                ListTile(
                  title: Text(
                    "Phone",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Text("+0900-786-01"),
                ),
                ListTile(
                  title: Text(
                    "Address",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Text("New York,Random Street,House No.72"),
                ),
                ListTile(
                  title: Text(
                    "Gender",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Text("Male"),
                ),
                ListTile(
                  title: Text(
                    "Date Of Birth",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Text("October 13, 1999"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
