import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( 
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Image.asset("images/map.png", fit: BoxFit.cover, height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,),
                Row(
                  children: [
                      Expanded(
                        child: littleBar(texte: "recherche", iconSearch: Icons.search) 
                      ),
                      littleBar(data: Icons.navigation)
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

Container littleBar ({String? texte, IconData? data, IconData? iconSearch})
{
  return Container(
    height: 40,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      color: Colors.blue,
    ),
    child: (data == null)
      ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(iconSearch, weight: 10,),
              Text(texte?? "", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
            ],
          )
      : Icon(data)
  );
}




