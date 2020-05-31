import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
//    return _myListView(context);
   
  ////new starts
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar:AppBar(
        
        backgroundColor: Color(0xFFFFFFFF),
        iconTheme: IconThemeData(color:Colors.black),
        title: const Text('Countries',style: TextStyle(color:Colors.black)),
        actions:<Widget>[
          IconButton(icon:Icon(Icons.refresh),
              color: Color(0xFF212121),
              onPressed: (){})
        ],
      ),
      body: Container(
          child: SingleChildScrollView(
         
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                searchBar(),
         
                _myListView(context),
         
              ],
            ),
          ),
        
          ),
//      ),

   );
  }
}

    
   

//List
Widget _myListView(BuildContext context) {

  // backing data
  final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria',
    'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
    'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
    'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
    'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
    'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
    'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
    'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden',
    'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];

  return ListView.builder(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemCount: europeanCountries.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(europeanCountries[index]),
      );
    },
  );

}

Widget searchBar() {
  return Container(
    margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(60)),

          boxShadow: [
            BoxShadow(
                blurRadius: 0,
                offset: Offset(-2, 2),
//              color: Colors.white70,
               color: Color(0xFFB0BEC5),

                spreadRadius: -1)
          ],
        ),

         child: Row(
           children: <Widget>[
             Expanded(
               child: TextField(
                 decoration: new InputDecoration(
                     border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                        left: 25, bottom: 11, top: 11, right: 15),
                    hintText: 'Hello'
                ),
              ),
            ),

            new FloatingActionButton(
                elevation: 0.0,
                child: new Icon(Icons.search),

                backgroundColor: Colors.black,
                onPressed: () {}
            )
          ],
        ),
    
    
  );

}