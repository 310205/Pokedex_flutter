//home

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'pokemon.dart';
import 'pokemon_widgwet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Pokemon> pokemonList = [];

  bool loading = true;

  @override
  void initState() {
    getPokemon();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.network(
                'https://raw.githubusercontent.com/RafaelBarbosatec/SimplePokedex/master/assets/pokebola_img.png'),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: pokemonList.length,
          itemBuilder: (context, index) {
            return PokemonWidget(item: pokemonList[index]);
          }),
    );
  }

  void getPokemon() {
    var url = Uri.parse('http://104.131.18.84/pokemon/?limit=50&page=0');
    http.get(url).then((response) {
      if (response.statusCode == 200) {
        Map json = const JsonDecoder().convert(response.body);
        setState(() {
          pokemonList = json['data'].map<Pokemon>((item) {
            return Pokemon.fromJson(item);
          }).toList();
        });
      } else {
        return [];
      }
    });
  }
}
