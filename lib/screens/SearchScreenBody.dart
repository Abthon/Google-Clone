import 'package:flutter/material.dart';
import 'package:google_clone/screens/SearchScreenFooter.dart';

class SearchScreenBody extends StatelessWidget {
  var texts = [
    "Google Offers: ",
    "English",
    "Tigrinya",
    "Soomaali",
    "Affan Oromoo"
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 100.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  text(context, 'G', Colors.blue),
                  text(context, 'o', Colors.red),
                  text(context, 'o', Colors.orange),
                  text(context, 'g', Colors.blue),
                  text(context, 'l', Colors.green),
                  text(context, 'e', Colors.red),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: SizedBox(
                  width: size.width * 0.4,
                  child: TextField(
                    cursorWidth: 1,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black45, width: 1.0),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.search,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black45, width: 1.0),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        suffixIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Tooltip(
                              message: "Input Device",
                              child: IconButton(
                                hoverColor: Colors.transparent,
                                icon:
                                    Icon(Icons.keyboard, color: Colors.black45),
                                onPressed: () {},
                              ),
                            ),
                            Tooltip(
                              message: "Search by Voice",
                              child: IconButton(
                                hoverColor: Colors.transparent,
                                icon: Image.asset(
                                  'images/mic.png',
                                  scale: 1,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Tooltip(
                              message: "Search by Image",
                              child: IconButton(
                                hoverColor: Colors.transparent,
                                icon: Image.asset('images/camera.jpg'),
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            )
                          ],
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  button(context, "Google Search"),
                  button(context, "Is Lucky"),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return Container(
                    margin: EdgeInsets.only(right: 10.0),
                    child: text(context, texts[index],
                        index == 0 ? Colors.black54 : Color(0xff0000EE),
                        fontSize: 13, isBold: false),
                  );
                }),
              ),
            ],
          )),
          SearchScreenFooter()
        ],
      ),
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

Widget button(BuildContext context, String text) {
  return Container(
    margin: EdgeInsets.only(right: 15.0),
    decoration: BoxDecoration(
      color: Colors.black12,
      borderRadius: BorderRadius.circular(5.0),
    ),
    padding: EdgeInsets.all(10.0),
    child: Text(
      text,
    ),
  );
}
