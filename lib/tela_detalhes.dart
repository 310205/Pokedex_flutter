//teladetalhes

import 'package:app_pokedex/pokemon.dart';
import 'package:flutter/material.dart';

class TelaDetalhes extends StatelessWidget {
  final Pokemon detalhes;
  const TelaDetalhes({Key? key, required this.detalhes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(detalhes.name ?? ''),
      ),
      body: Card(
        elevation: 15,
        color: Colors.white12,
        margin: const EdgeInsets.only(bottom: 90, top: 20, right: 25, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.brown[50],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text('#${(detalhes.number ?? '')}'),
                    ),
                  ),
                  Image.network(
                    detalhes.thumbnailImage ?? '',
                    width: 300,
                    height: 200,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                detalhes.description ?? '',
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            const Divider(
              indent: 25,
              endIndent: 25,
              thickness: 1,
              color: Colors.green,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 25),
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'Type',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    '${(detalhes.type ?? '')}',
                    style: const TextStyle(
                      fontSize: 1,
                    ),
                  ),
                ),
                const Divider(
                  indent: 25,
                  endIndent: 25,
                  thickness: 2,
                  color: Colors.green,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 25),
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                        'Type',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      margin: const EdgeInsets.all(5),
                      child: Text(
                        '${(detalhes.weakness ?? '')}',
                        style: const TextStyle(
                          fontSize: 15.0,
                        ),
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
