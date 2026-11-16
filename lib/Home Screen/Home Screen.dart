
import 'package:facebook/Home%20Screen/post.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Facebook",
          style: TextStyle(
            color: Color(0xff1877F2),
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(Icons.add_circle, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.chat, color: Colors.black),
          SizedBox(width: 15),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          spacing: 10,
          children: [
            Image.asset("assets/image/7.png"),
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.grey,
                    child: Image.asset("assets/image/1.png"),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "What's in Your Mind?",
                      )
                      ,),
                    ),
                  Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                ],
              ),
            ),

            Divider(thickness: 5, color: Colors.grey[200]),
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Stories",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("See All"),
                ],
              ),
            ),

            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/image/2.png",height: 100,),
                      Icon(Icons.add_circle,color: Colors.blue,),
                      Text("Create Story"),
                    ],
                  ),
                  SizedBox(width: 10),
                  Container(
                    alignment: Alignment.topLeft,
                    width: 100,
                      height: 100,
                      decoration:BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/image/3.png",)
                        ),
                      ),
                    child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey,
                        child: Image.asset("assets/image/4.png"),
                    )
                  ),
                  SizedBox(width: 10),
                  Container(
                      alignment: Alignment.topLeft,
                      width: 100,
                      height: 100,
                      decoration:BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/image/3.png",)
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey,
                        child: Image.asset("assets/image/4.png"),
                      )
                  ),
                  SizedBox(width: 10),
                  Container(
                      alignment: Alignment.topLeft,
                      width: 100,
                      height: 100,
                      decoration:BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/image/3.png",)
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey,
                        child: Image.asset("assets/image/4.png"),
                      )
                  ),
                  SizedBox(width: 10),
                  Container(
                      alignment: Alignment.topLeft,
                      width: 100,
                      height: 100,
                      decoration:BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/image/3.png",)
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey,
                        child: Image.asset("assets/image/4.png"),
                      )
                  ),
                  SizedBox(width: 10),

                ],
              ),
            ),

            Divider(thickness: 5, color: Colors.grey[200]),
            Post(image: "assets/image/6.png"),
            Post(image: "assets/image/3.png"),
            Post(image: "assets/image/2.png"),
            Post(image: "assets/image/3.png"),
            Post(image: "assets/image/6.png"),

          ],
        ),
      ),
    );
  }


}
