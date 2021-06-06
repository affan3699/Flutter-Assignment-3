import 'package:flutter/material.dart';

class ThirdSreen extends StatelessWidget {
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
          Container(
            margin: EdgeInsets.all(11.0),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                labelText: 'Username',
                hintText: 'Username',
              ),
            ),
          ),
          Text(
            "History",
          ),
          tile(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmpLeNCyjCDidDuFU3SWPU3Q7aGkqHT9FCkg3oGMhn7JTOU1wBfbjB9bTKUZJ8T90KCHw&usqp=CAU",
              "Iphone 12"),
          tile(
              "https://www.windowscentral.com/sites/wpcentral.com/files/styles/large_wm_brw/public/field/image/2020/08/samsung-galaxy-note-20-ultra-1.jpg",
              "Note 20 Ultra"),
          tile(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuoQlGKW_PU5EjeUIR9SoXnZSj1jUWT-h0IA&usqp=CAU",
              "Macbook Air"),
          tile(
              "https://apollo-singapore.akamaized.net/v1/files/wwc7zm566vp41-PK/image;s=850x0",
              "MI Box S"),
          tile(
            "https://www.telemart.pk/uploads/product_image/product_36068_1.jpg",
            "Nvidia 1080 Ti",
          ),
          tile(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnZzGKphfWngi-0tH3SHSQMlpIP31egWUiJw&usqp=CAU",
              "Infinix Hot 10"),
          tile(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnZzGKphfWngi-0tH3SHSQMlpIP31egWUiJw&usqp=CAU",
              "Infinix Hot 10"),
          tile(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnZzGKphfWngi-0tH3SHSQMlpIP31egWUiJw&usqp=CAU",
              "Infinix Hot 10"),
        ],
      )),
    );
  }
}

Widget tile(String networkImage, String productName) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(networkImage),
      radius: 25.0,
    ),
    title: Text(
      productName,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Row(
      children: [
        Icon(
          Icons.star,
          size: 22.0,
          color: Colors.yellow,
        ),
        Text("   5.0 (23 Reviews)"),
      ],
    ),
    trailing: Text("\$10"),
  );
}
