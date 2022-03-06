import 'package:flutter/material.dart';
import 'package:cric8innet/Shared/routes.dart';
import 'package:cric8innet/core/widgets/_backButton.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      backButton(context),
                      const Spacer(),
                      const Image(
                          width: 130,
                          height: 130,
                          image: AssetImage('assets/icons/signupTop.png'))
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Create an",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Account",
                        style: TextStyle(fontSize: 30),
                      )),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            labelText: "Full name"),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            labelText: "Email id"),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),
                            labelText: "password"),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),
                            labelText: "confirm password"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.018),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 5, 170, 121)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(50.0)))),
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.home);
                        },
                        child: const Text(
                          "SIGN UP",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                ),
                // const Spacer(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.login);
                        },
                        child: const Text(
                          "Sign in",
                          style: TextStyle(
                              color: Color.fromARGB(255, 5, 170, 121)),
                        ))
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
