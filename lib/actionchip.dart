import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ActionChipDisplay extends StatefulWidget {

  @override
  _ActionChipDisplayState createState() => _ActionChipDisplayState();
}

class _ActionChipDisplayState extends State<ActionChipDisplay> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {
          //
        }),
        title: Text('Home Settings'),
        actions: <Widget>[
          IconButton(icon: Icon(
              FontAwesomeIcons.cloud), onPressed: () {
            //
          }),
        ],
      ),
      body: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 260.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1521782462922-9318be1cfd04?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80")
                      )
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text('Welcome Home',
                  style: TextStyle(color: Colors.black, fontSize: 24.0),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text('Monday 18:00 PM, Mostly Sunny',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 20.0),),
              ),
            ),
            Divider(color: Colors.blueGrey, height: 10.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align
                (
                alignment: Alignment.centerLeft,
                child: Wrap(
                  spacing: 10.0,
                  children: <Widget>[
                    ActionChip(
                      avatar: Icon(
                        FontAwesomeIcons.solidSun, color: Color(0xffffc107),),
                      label: Text('Turn on Lights'),
                      backgroundColor: Color(0xffededed),
                      labelStyle: TextStyle(color: Color(0xff000000),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            // return object of type Dialog
                            return AlertDialog(
                              title: Text('Choose the Color'),
                              actions: <Widget>[
                                new FlatButton(
                                  child: Container(
                                    width: 30.0,
                                    height: 30.0,
                                    decoration: new BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                new FlatButton(
                                  child: Container(
                                    width: 30.0,
                                    height: 30.0,
                                    decoration: new BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },

                                ),
                                new FlatButton(
                                  child: Container(
                                    width: 30.0,
                                    height: 30.0,
                                    decoration: new BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),

                    ActionChip(
                      avatar: Icon(
                        FontAwesomeIcons.solidClock, color: Color(0xff4422ee),),
                      backgroundColor: Color(0xffededed),
                      labelStyle: TextStyle(color: Color(0xff000000),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                      label: Text('Set Alarm'),
                      onPressed: () {
                        //set Alarm
                      },
                    ),
                    ActionChip(
                      avatar: Icon(
                          FontAwesomeIcons.phoneVolume,
                          color: Color(0xffe52d27)),
                      backgroundColor: Color(0xffededed),
                      labelStyle: TextStyle(color: Color(0xff000000),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                      label: Text('Call Mike'),
                      onPressed: () {
                        //Call Mike
                      },
                    ),
                  ],),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

