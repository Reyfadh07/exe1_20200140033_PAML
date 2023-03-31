import 'package:exe1_2020140033/loginpage.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 80),
              child: const Text(
                'Pokedex',
                style: TextStyle(
                    fontSize: 45,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 45),
              child: const Text(
                'Welcome to Pokedex \n You can find your favorite Pokemon here',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 140),
              child: Image.asset(
                'images/logopokemon.jpeg',
                width: 200,
                height: 200,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 150),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                backgroundColor: Colors.redAccent,
                child: const Icon(Icons.arrow_forward_ios),
              ),
            )
          ],
        ),
      ),
    );
  }
}
