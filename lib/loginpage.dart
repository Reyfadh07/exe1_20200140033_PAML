import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            padding: const EdgeInsets.only(top: 70),
            alignment: Alignment.center,
            child: Image.asset(
              "images/judulpokemon3.png",
              width: 300,
              height: 200,
            ),
          ),
          Container(
            child: const Text(
              "Let's Get Started.",
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: const Text(
              "There's No Sense In Going Out Of \n Your Way To Get SomeBody To Like You,",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          Form(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 30, left: 30),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Nama",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.redAccent, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Masukan Nama',
                    hintStyle: TextStyle(fontSize: 20),
                    prefixIcon: Icon(
                      Icons.person_2,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
              Container(
                child: Text("Password"),
              )
            ],
          ))
        ]),
      ),
    );
  }
}