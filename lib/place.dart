// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/widgets.dart';

// void main(){
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//    const MyApp({super.key});
   
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Choix de place',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
//         useMaterial3: true,
//       ),
//       home: BasicsPage(),
//     );
//   }
// }

// class BasicsPage extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     var platform = Theme.of(context).platform;
//     print("size: $size");
//     print("plateform: $platform");
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Choix de place"),
//         leading: Icon(Icons.face),
//       )
//     );
//   }
// }


class Personne 
{
  String? nom;
  String? prenom;

  Personne({required this.nom, required this.prenom});
}

class Enfant extends Personne {
  int? age;

  Enfant({required this.age, required String nom, required String prenom}) : super (
    nom : nom,
    prenom: prenom
  );
}

//import 'package:flutter/material.dart';

/*class Button extends StatefulWidget
{

} */

