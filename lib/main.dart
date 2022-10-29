import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List <String> entries = <String> [
    'Vegetables pizza',
    'Chesse pizza',
    'Sandwich'
  ];

  final List <String> food = <String> [
    'images/pizza.png',
    'images/pizza2.jpg',
    'images/sandwich.jpg'
  ];
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
       title: const Text("Android pizza"),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.red,
              margin: const EdgeInsets.all(10.0),
              child:
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children:[
                        CircleAvatar(
                          backgroundImage: AssetImage(food[index]),
                          //AssetImage('${food[index]}'),
                          radius: 50.0,

                        ),
                        Text('${entries[index]}', textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,fontSize: 30)),
                      ],
            ),
                  ),
            );
          }
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
