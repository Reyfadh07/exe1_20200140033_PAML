import 'package:exe1_2020140033/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'homepage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

  String? nama;
  String? email;
  String? password;
  String? repassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 40, left: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ));
                },
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                child: const Icon(
                  Icons.arrow_back_ios,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 20),
              width: 150.0,
              height: 150.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/pokemon1.jpeg'),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 40),
              alignment: Alignment.center,
              child: const Text(
                "Daftar",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.only(left: 30),
                  child: const Text(
                    "Nama",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintStyle: TextStyle(fontSize: 20),
                      hintText: "Masukan Nama Anda",
                      prefixIcon: Icon(
                        Icons.person_2,
                        color: Colors.redAccent,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Nama tidak boleh kosong";
                      } else if (value.length < 6) {
                        return "Nama minimal harus 6 karakter";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      nama = value;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30, left: 30),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Email",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintStyle: TextStyle(fontSize: 20),
                      hintText: "Masukan Email Anda",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.redAccent,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email tidak boleh kosong";
                      } else if (!value.contains('@')) {
                        return "Email tidak valid";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      email = value;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30, left: 30),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Password",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintStyle: TextStyle(fontSize: 20),
                      hintText: "Masukan Password Anda",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.redAccent,
                      ),
                    ),
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
                  padding: EdgeInsets.only(top: 30, left: 30),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Re-Password",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintStyle: TextStyle(fontSize: 20),
                      hintText: "Masukan Re-Password Anda",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.redAccent,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Re-Password tidak boleh kosong";
                      } else if (value != _passwordController.text) {
                        return "Re-password harus sama dengan password";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      repassword = value;
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 35),
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
                          borderRadius: BorderRadius.circular(80),
                        ),
                        backgroundColor: Colors.redAccent,
                        minimumSize: const Size(350, 60)),
                    child: const Text(
                      "Daftar",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
