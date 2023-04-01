import 'package:exe1_2020140033/pokehub.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    this.name,
  });

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 60, left: 20),
                  child: RichText(
                    text: TextSpan(
                      text: 'Hello,',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 25),
                      children: <TextSpan>[
                        TextSpan(
                          text: '$name',
                          style: const TextStyle(
                              color: Colors.redAccent,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 60, left: 100),
                  margin: EdgeInsets.only(top: 60, left: 130),
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/ash.jpeg'),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                'POKEDEX',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                    fontSize: 25),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16.0),
                  hintText: 'Cari Pokemon',
                  hintStyle: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                  prefixIcon: Icon(Icons.search),
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Column(
              children: const [
                PokeHub(
                    nomorpoke: '#007',
                    namapoke: 'Squirtle',
                    deskpoke:
                        'When it retracts its long neck into its shell, it squirts out water with vigorous force.',
                    assetpoke: 'images/squirtle.png',
                    tipepoke: 'Water'),
                PokeHub(
                    nomorpoke: '#0061',
                    namapoke: 'Poliwhirl',
                    deskpoke:
                        "Staring at the swirl on its belly causes drowsiness. This trait of Poliwhirl’s has been used in place of lullabies to get children to go to sleep.",
                    assetpoke: 'images/poliwhirl.png',
                    tipepoke: 'Water'),
                PokeHub(
                    nomorpoke: '#009',
                    namapoke: 'Blastoise',
                    deskpoke:
                        'It crushes its foe under its heavy body to cause fainting. In a pinch, it will withdraw inside its shell.',
                    assetpoke: 'images/blastoise.png',
                    tipepoke: 'Water'),
                PokeHub(
                    nomorpoke: '#055',
                    namapoke: 'Godluck',
                    deskpoke:
                        'When it swims at full speed using its long, webbed limbs, its forehead somehow begins to glow.',
                    assetpoke: 'images/godluck.png',
                    tipepoke: 'Water')
              ],
            )
          ],
        ),
      ),
    );
  }
}
