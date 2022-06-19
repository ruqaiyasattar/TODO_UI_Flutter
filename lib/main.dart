import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MystatefullWidget(),
  ));
}

class MystatefullWidget extends StatefulWidget {
  @override
  _MystatefullWidgetState createState() => _MystatefullWidgetState();
}

class _MystatefullWidgetState extends State<MystatefullWidget> {
  List<Color> colors() {
    return [
      Colors.green,
      Colors.red,
      Colors.deepPurpleAccent,
      Colors.lightBlueAccent,
      Colors.orange,
      Colors.amber,
      Colors.deepOrangeAccent,
      Colors.greenAccent,
      Colors.pink,
      Colors.blue
    ];
  }

  List<String> title() {
    return [
      "TO DO",
      "PLACE TO GO",
      "PEOPLE TO MEET",
      "PEOPLE TO SPEAK",
      "TRAVEL",
      "TO DO",
      "PLACE TO GO",
      "PEOPLE TO MEET",
      "PEOPLE TO SPEAK",
      "PEOPLE TO ksjjhdf",
    ];
  }

  @override
  Widget build(BuildContext context) {
    List<String> titlelist = title();
    List<Color> colrlist = colors();
    return Scaffold(
/*        appBar: AppBar(
          title: Text("My Day",textDirection: TextDirection.ltr), backgroundColor: Colors.redAccent,
          actions: <Widget>[
            IconButton(onPressed: (){Text("beenthere");}, icon: Icon(Icons.beenhere)),
            IconButton(onPressed: (){
              Fluttertoast.showToast(
                  msg: "This is Center Short Toast for Map Icon Testing",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            },       icon: Icon(Icons.map))
          ],
        ),*/
        body: Center(
            child: Container(
              //for background image
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/wallpaper.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.linearToSrgbGamma(),
                  )),
              //this column has container and listview of cards
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 400,
                    child: Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Text(
                        "MY DAY",
                        textScaleFactor: 3.0,
                        style: TextStyle(color: Colors.white),
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        padding: EdgeInsets.all(16),
                        itemCount: titlelist.length,
                        itemBuilder: (context, i) {
                          return Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Card(
                                margin: EdgeInsets.only(
                                    left: 0, right: 0, top: 0, bottom: 16),
                                child: Padding(
                                  padding: EdgeInsets.all(16),
                                  child: SizedBox(
                                    width: double.maxFinite,
                                    height: 100,
                                    child: Center(
                                      child: Text('This is card content'),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: -8,
                                left: 16,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 34 / 2,
                                    vertical: 50 / 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: colrlist[i],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    titlelist[i],
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 8,
                                  right: 16,
                                  child: Icon(Icons.add_circle_outline))
                            ],
                          );
                        }),
                  )
                ],
              ),
            )));
  }
}
