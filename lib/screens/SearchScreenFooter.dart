import 'package:flutter/material.dart';

class SearchScreenFooter extends StatelessWidget {
  List<String> text1 = [
    "InCare Of",
    "Advertisements",
    "Business",
    "How to Search"
  ];

  List<String> text2 = ["Privacy", "Contract", "settings"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black12,
          padding: EdgeInsets.only(left: 40.0, top: 40.0, bottom: 10.0),
          alignment: Alignment.centerLeft,
          child: Text(
            "Ethiopia",
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(
          color: Colors.black26,
          height: 1,
        ),
        Container(
          color: Colors.black12,
          padding: EdgeInsets.only(left: 42.0, top: 10.0, bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(
                  4,
                  (index) {
                    return Container(
                      margin: EdgeInsets.only(right: 20.0),
                      child: text(context, text1[index], Colors.black54,
                          fontSize: 13, isBold: true),
                    );
                  },
                ),
              ),
              Row(
                children: List.generate(
                  3,
                  (index) {
                    return Container(
                      margin: EdgeInsets.only(right: 20.0),
                      child: text(context, text2[index], Colors.black54,
                          fontSize: 13, isBold: true),
                    );
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

Widget text(BuildContext context, String text, Color color,
    {double fontSize = 80, bool isBold = true}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: isBold ? FontWeight.bold : null,
    ),
  );
}
