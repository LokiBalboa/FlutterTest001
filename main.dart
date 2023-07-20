import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
   @override
   State<MyApp> createState() => _MyAppState();
  }

class _MyAppState extends State<MyApp> {
  var brojac = 0;
  var brojac2 = 0;
  var _tekst='Ja sam super auto, da li mi znaš ime,\n ANTUNE ?';

  void _onItemTapped(int index) {
    setState(() {_tekst='Možda bih izašao da sam instaliran na mobu';});
    SystemNavigator.pop(); // NE RADI
    exit(0); // NE RADI
    if (index == 1) {(brojac=10);}
    else {(brojac=2);};
  }

  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Pogodi tko sam'),
          ), // AppBar
          body: Center( 
            child:Column (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text(_tekst,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.blue
                          ),
                        ),

                      SizedBox(height: 50, width:20),

                      Image.network(
                        'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1dQ7Qb.img?w=800&h=415&q=60&m=2&f=jpg',
                        width: 500
                        ),  

                      SizedBox(height: 50, width:20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(fixedSize: const Size(180, 30)),
                            onPressed: (){
                            setState((){_tekst='NE ANTUNE,\n KRIVO !!!';});
                            }, // onPressed              
                          child: Text('Austin-Healey 3000'),
                        ), //ElevatedButto

                          ElevatedButton(
                            style: ElevatedButton.styleFrom(fixedSize: const Size(180, 30)),
                            onPressed: (){
                            setState((){_tekst='BRAVO ANTUNE !!!';});
                            }, // onPressed              
                          child: Text('AC Cobra'),
                        ), //ElevatedButto
                        ],
                      ),    

                      SizedBox(height: 10, width:20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(fixedSize: const Size(180, 30)),
                            onPressed: (){
                            setState((){_tekst='NE ANTUNE,\n KRIVO !!!';});
                            }, // onPressed              
                          child: Text('Buick Riviera'),
                        ), //ElevatedButto

                          ElevatedButton(
                            style: ElevatedButton.styleFrom(fixedSize: const Size(180, 30)),
                            onPressed: (){
                            setState((){_tekst='NE ANTUNE,\n KRIVO !!!';});
                            }, // onPressed              
                          child: Text('De Tomaso Pantera'),
                        ), //ElevatedButto
                        ],
                      ),   
                    ]
                  ) // Column 
          ), // Center


          backgroundColor: Colors.lime,
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.restart_alt),
                label: 'Restart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.close),
                label: 'Exit',
              ),
            ],
            backgroundColor: Colors.blue,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
             
          ),  // BottomNavigationBar

        ) // Scaffold Widget
    ); // Material App
  }
}

