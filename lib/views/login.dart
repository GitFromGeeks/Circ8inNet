import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Image(image: AssetImage('assets/images/login.png')),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        const Text("Sign in"),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        TextFormField(
          decoration: const InputDecoration(
              icon: Icon(
                Icons.email,
                color: Colors.black,
              ),
              labelText: "Username"),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          decoration: const InputDecoration(
              icon: Icon(
                Icons.lock,
                color: Colors.black,
              ),
              labelText: "password"),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        CupertinoButton(
            color: Colors.green[400],
            child: const Text("Login"),
            onPressed: () {})
      ],
    );
  }
}
