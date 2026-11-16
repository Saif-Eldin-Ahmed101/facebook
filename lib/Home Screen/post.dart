import 'package:flutter/material.dart';

class Post extends StatelessWidget
{
  String image;
  Post({required this.image});
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            child: Image.asset("assets/image/5.png"),
          ),
          title: Text(
            "Route",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("5h"),
          trailing: Icon(Icons.more_horiz),
        ),
        Container(
          width: double.infinity,
          height: 250,
          color: Colors.white,
          child:Image.asset(image),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.thumb_up_alt_outlined),
              label: Text("Like"),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.comment_outlined),
              label: Text("Comment"),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.share_outlined),
              label: Text("Share"),
            ),
          ],
        ),
        Divider(thickness: 5, color: Colors.grey[200]),
      ],
    );

  }

}