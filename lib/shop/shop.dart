import 'package:flutter/material.dart';
import 'package:SummerApp/components/large_card.dart';
import 'package:SummerApp/components/sliver_search_bar.dart';
import 'package:SummerApp/components/shop_row.dart';
import 'package:SummerApp/constants.dart';

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,      
      child: Scaffold(
        //floatingActionButton: FloatingActionButton.extended(onPressed: null, label: null),
        drawer: Drawer(
          child: ListView(),
        ),
        resizeToAvoidBottomInset: true,
        body: ListView(
          //physics: NeverScrollableScrollPhysics(),
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomScrollView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              slivers: [
                SliverSearchBar(),
              ],
            ),
            ShopRow(
              height: 240,
              children: List.generate(
                8,
                (index) => LargeCard(
                  link: "$kBGLink${9 - index - 1}.jpg",
                ),
              ),
              title: "Recommended Shops Near You",
            ),
          ],
        ),
      ),
    );
  }
}
