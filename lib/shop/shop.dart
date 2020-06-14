import 'package:flutter/material.dart';
import 'package:SummerApp/components/large_card.dart';
import 'package:SummerApp/components/sliver_search_bar.dart';

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(),
      ),
      resizeToAvoidBottomInset: true,
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverSearchBar(),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 16 / 9.2,
            ),
            delegate: SliverChildListDelegate(
              [
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    LargeCard(),
                    LargeCard(),
                    LargeCard(),
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
