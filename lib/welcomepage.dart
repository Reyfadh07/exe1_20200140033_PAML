import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
              
            )
          ],
        ),
      ),
    );
  }
}
