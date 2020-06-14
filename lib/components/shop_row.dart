import 'package:flutter/material.dart';
import 'default_title_widget.dart';

class ShopRow extends StatelessWidget {
  final List<Widget> children;
  final String title;
  final double height;
  ShopRow({@required this.height,this.title,@required this.children});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title != null ? DefaultTitleWidget(titleText: title) : Container(),
        SizedBox(
          height: height,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: children,
          ),
        ),
      ],
    );
  }
}
