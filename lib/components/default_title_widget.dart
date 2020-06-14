import 'package:flutter/material.dart';

class DefaultTitleWidget extends StatelessWidget {
  final String titleText;
  DefaultTitleWidget({this.titleText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30),
      child: Text(
        titleText,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Rboto",
          color: Colors.white.withOpacity(0.85),
          fontWeight: FontWeight.w400,
          fontSize: 18,
        ),
      ),
    );
  }
}
