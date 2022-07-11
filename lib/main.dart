//main.


import 'package:app_pokedex/pokemon.dart';

import 'package:flutter/material.dart';

import 'home_page.dart';
import 'tela_detalhes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
     initialRoute: '/',
     routes:{
      '/':(context) => const HomePage(),
      '/teladetalhes':(context) => TelaDetalhes(detalhes: ModalRoute.of(context)?.settings.arguments as Pokemon),

     },
    );
  }
}
