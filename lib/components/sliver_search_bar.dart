import 'package:flutter/material.dart';

class SliverSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      title: Container(
        decoration: BoxDecoration(
          color: Color(0xff3c4043),
          border: Border.all(
            color: Color(0xff3c4043),
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Builder(
              builder: (innerContext) => IconButton(
                icon: Icon(
                  Icons.menu,
                  size: 30,
                  color: Color(0xff8a9095),
                ),
                onPressed: () {
                  Scaffold.of(innerContext).openDrawer();
                },
              ),
            ),
            Text(
              "Search For Shops & Markets",
              style: TextStyle(
                color: Color(0xff8a9095),
                fontFamily: "Comfortaa",
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.mic),
                iconSize: 20,
              ),
            ),
            CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage("https://i.imgur.com/e5vUdDz.jpg"),
            ),
          ],
        ),
      ),
      //centerTitle: true,
    );
  }
}
