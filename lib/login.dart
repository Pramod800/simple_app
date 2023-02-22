import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            const Center(
                child: Text(
              "Login Page",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            )),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Enter Username",
                hintText: "Enter Username",
                prefixIcon: Icon(
                  Icons.verified_user,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Enter Password",
                hintText: "Enter Password",
                prefixIcon: Icon(
                  Icons.password_sharp,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Login",
                  style: TextStyle(),
                )),
            Text("Don't have an account? "),
            Row(
              children: <Widget>[
                Image.asset('assets/facebook.png', height: 40, width: 50),
              ],
            )
          ],
        ),
      )),
    );
  }
}
