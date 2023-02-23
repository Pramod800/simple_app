import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';

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
              height: 80,
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
                  FontAwesome.user,
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
                  FontAwesome.eye_slash,
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
            const SizedBox(
              height: 15,
            ),
            const Text("Don't have an account? "),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                    onTap: () {},
                    child: Image.asset('assets/facebook.png',
                        height: 50, width: 60)),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                    onTap: () {},
                    child: Image.asset('assets/google.png',
                        height: 50, width: 60)),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                    onTap: () {},
                    child: Image.asset('assets/twitter.png',
                        height: 50, width: 60)),
              ],
            )
          ],
        ),
      )),
    );
  }
}
