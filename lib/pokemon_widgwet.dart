//PokemonWidget

import 'package:flutter/material.dart';

import 'package:app_pokedex/pokemon.dart';

import 'tela_detalhes.dart';

class PokemonWidget extends StatelessWidget {
  const PokemonWidget({
    Key? key,
    required this.item,
  }) : super(key: key);
  final Pokemon item;

  @override
  Widget build(BuildContext context) {
   void goToTelaDetalhes() {
     Navigator.of(context).push(MaterialPageRoute(
         builder: (context) => TelaDetalhes(detalhes: item)));
   }

    return Card(
      margin: const EdgeInsets.all(20),
      child: ListTile(
        title: Text(item.name ?? ''),
        leading: Image.network(item.thumbnailImage ?? ''),
        trailing: Text('#${item.number ?? ''}'),
         
        onTap: () {
          goToTelaDetalhes();
        },
      ),
    );
  }
}
