import 'package:flutter/material.dart';
import 'package:google_clone/screens/SearchScreenBody.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        actions: [
          Row(
            children: [
              Text("Gmail",
                  style: TextStyle(
                    color: Colors.black,
                  )),
              SizedBox(width: 20.0),
              Text("Images",
                  style: TextStyle(
                    color: Colors.black,
                  )),
              SizedBox(width: 20.0),
              IconButton(
                icon: Icon(Icons.apps, color: Colors.black),
                onPressed: () {},
              ),
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Material(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  color: Colors.blue[700],
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 27.0, right: 27.0, top: 12.0, bottom: 12.0),
                      child: Text("Log On"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SearchScreenBody(),
    );
  }
}
