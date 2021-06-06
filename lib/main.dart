import 'package:flutter/material.dart';
import 'thridScreen.dart';
import 'SecondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      debugShowCheckedModeBanner: false,
      home: SecondScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
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
          children: [
            customUI(
                context,
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmpLeNCyjCDidDuFU3SWPU3Q7aGkqHT9FCkg3oGMhn7JTOU1wBfbjB9bTKUZJ8T90KCHw&usqp=CAU",
                "Iphone 12"),
            customUI(
                context,
                "https://www.windowscentral.com/sites/wpcentral.com/files/styles/large_wm_brw/public/field/image/2020/08/samsung-galaxy-note-20-ultra-1.jpg",
                "Note 20 Ultra"),
            customUI(
                context,
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuoQlGKW_PU5EjeUIR9SoXnZSj1jUWT-h0IA&usqp=CAU",
                "Macbook Air"),
            customUI(
                context,
                "https://apollo-singapore.akamaized.net/v1/files/wwc7zm566vp41-PK/image;s=850x0",
                "MI Box S"),
            customUI(
                context,
                "https://www.telemart.pk/uploads/product_image/product_36068_1.jpg",
                "Nvidia 1080 Ti")
          ],
        ),
      ),
    );
  }
}

Widget customUI(BuildContext context, String networkImage, String productName) {
  return Container(
    margin: EdgeInsets.all(12.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    width: MediaQuery.of(context).size.width,
    height: 130,
    child: Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: NetworkImage(networkImage),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              productName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 20.0,
                  color: Colors.yellow,
                ),
                Text(" 5.0 (23 Review)", style: TextStyle(fontSize: 15.0)),
              ],
            ),
            Row(
              children: [
                Text("     20 Pieces", style: TextStyle(fontSize: 15.0)),
                Text(
                  "    \$90",
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                )
              ],
            ),
            Text("Quantity: 1", style: TextStyle(fontSize: 15.0))
          ],
        )
      ],
    ),
  );
}
