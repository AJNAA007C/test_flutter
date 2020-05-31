import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testflutter/nxt.dart';
import 'nxt.dart';


//weather api
//import 'package:http/http.dart' as http;
//import 'dart:async';
//
//Future<Weather> fetchWeather() async {
//  final response = await http.get('https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=36afa4f15510f60b0ebcbde444ce43a8');
//
//  if (response.statusCode == 200) {
//
//    return Weather.fromJson(json.decode(response.body));
//  } else {
//
//    throw Exception('Failed to load weather data');
//  }
//}
//

//

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new test_flutter());
  }
}

class test_flutter extends StatefulWidget {
  @override
  _test_flutterState createState() => _test_flutterState();
}

class _test_flutterState extends State<test_flutter> {

  String temp = "-6\u2103";

  //weather
//      Future<Weather> futureWeather;
//
//      @override
//      void initState() {
//        super.initState();
//        futureWeather = fetchWeather();
//      }
  //


  void ChangedTemp() {
    temp = "30";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      //api
//           body: Center(
//           child:FutureBuilder<Weather>(
//           future: futureWeather,
//           builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return Text(snapshot.data.temp);
//         } else if (snapshot.hasError) {
//           return Text("${snapshot.error}");
//         }
//
//         // By default, show a loading spinner.
//         return CircularProgressIndicator();
//       },
//        ),
//           ),

//

      Container(
        padding: new EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/location_background.jpg"),
            fit: BoxFit.cover,

          ),
        ),

        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: new Icon(Icons.arrow_forward, color: Colors.white),
                    iconSize: 30,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: ((context) => Secondpage()),
                      ));
                    }
                ),


                IconButton(
                    icon: new Icon(Icons.menu, color: Colors.white),
                    iconSize: 30,
                    onPressed: () {
                      ChangedTemp();
                      setState(() {}

                      );
                    }

                ),

              ],
            ),

            Column(
                children: <Widget>[


                  Text('Warsaw', style: TextStyle(color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),),
                  Text('6:30pm-Monday, 24 Dec', style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 10),),
                ]
            ),


            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  temp, style: TextStyle(color: Colors.white, fontSize: 80,),),
                Row(children: <Widget>[
                  Icon(
                    Icons.cloud,
                    color: Colors.white24,
                  ),
                  Text('Snowing', style: TextStyle(color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 10),),
                ]
                ),


              ],),

//
            Divider(
              height: 10.0,
              indent: 5.0,
              color: Colors.grey,
            ),
            Column(children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Expanded(flex: 3,
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Wind', style: TextStyle(color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 10),),

                      ],
                    ),
                  ),

                  Expanded(flex: 3,
                    child: Column(mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Rain', style: TextStyle(color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 10),),
                      ],
                    ),
                  ),


                  Expanded(

                    child: Column(mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Humidity', style: TextStyle(color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 10),),
                      ],
                    ),
////                        ),
                  ),

                ],
              ),


              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[


                  Expanded(flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('13', style: TextStyle(color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),

                  Expanded(flex: 3,
                    child: Column(mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('0', style: TextStyle(color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('88', style: TextStyle(color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),),
                      ],
                    ),
////                         ),
                  ),
////
                ],
              ),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Expanded(flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('km/h', style: TextStyle(color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),


                  Expanded(flex: 3,
                    child: Column(mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[
                        Text('%', style: TextStyle(color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),


                  Expanded(
                    child: Column(mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('%', style: TextStyle(color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
              ),

            ],
            ),

          ],
        ),


      ),
    );
  }
}



