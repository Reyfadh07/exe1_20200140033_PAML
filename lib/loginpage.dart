import 'package:exe1_2020140033/homepage.dart';
import 'package:exe1_2020140033/registerpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String? nama;
  String? password;
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
            key: _formKey,
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Nama tidak boleh kosong";
                      } else if (value.length < 6) {
                        return "Nama harus terdiri dari 6 karakter";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      nama = value;
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 30, left: 30),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Password",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.redAccent, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Masukan Password',
                        hintStyle: TextStyle(fontSize: 20),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.redAccent,
                        ),
                        suffixIcon: Icon(Icons.remove_red_eye)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password tidak boleh kosong";
                      } else if (value.length < 6) {
                        return "Password harus lebih dari 6 karakter";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      password = value;
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 100),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(
                              name: nama,
                            ),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        backgroundColor: Colors.redAccent,
                        minimumSize: const Size(350, 60)),
                    child: const Text(
                      "Masuk",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Tidak meiliki Akun",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()),
                        );
                      },
                      child: const Text(
                        "Daftar",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
