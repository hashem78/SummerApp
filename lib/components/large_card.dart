import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class LargeCard extends StatelessWidget {
  final String link;
  LargeCard({@required this.link});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 10,
        right: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 250,
              height: 150,
              child: FadeInImage.memoryNetwork(
                fit: BoxFit.fill,
                fadeInDuration: Duration(seconds: 3),
                fadeInCurve: Curves.ease,
                placeholder: kTransparentImage,
                image: link,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Icon(
                  Icons.ac_unit,
                  size: 60,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Name"),
                    Text(
                      "Description",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "4.5★",
                      style: TextStyle(
                        color: Colors.white.withOpacity(.8),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
