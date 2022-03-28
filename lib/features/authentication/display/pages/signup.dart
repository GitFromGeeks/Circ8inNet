import 'package:cric8innet/features/authentication/display/pages/chooseAuth.dart';
import 'package:flutter/material.dart';
import 'package:cric8innet/Shared/routes.dart';
import 'package:cric8innet/core/widgets/_backButton.dart';
import 'package:http/http.dart' as http;

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isLoading = false;

  //Controllers
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController1 = TextEditingController();
  final TextEditingController passwordController2 = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _form,
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
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
                          controller: fullNameController,
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              labelText: "Full name"),
                        ),
                        TextFormField(
                          controller: usernameController,
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              labelText: "Full name"),
                        ),
                        TextFormField(
                          controller: emailController,
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.email,
                                color: Colors.black,
                              ),
                              labelText: "Email id"),
                        ),
                        TextFormField(
                          controller: passwordController1,
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              labelText: "create password"),
                        ),
                        TextFormField(
                          controller: passwordController2,
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              labelText: "confirm password"),
                          validator: ((val) {
                            if (val!.isEmpty) {
                              return 'Empty';
                            }
                            if (val != passwordController1.text) {
                              return "Didn't Matcht";
                            } else {
                              return null;
                            }
                          }),
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
                            // Navigator.pushNamed(context, Routes.home);
                            setState(() {
                              isLoading = true;
                            });
                            _form.currentState?.validate();
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
      ),
    );
  }

  singUP(String firstname, lastName, mob, email, city, pincode, state, username,
      password, Image image) async {
    Map data = {
      'name': firstname,
      'username': username,
      'email': email,
      'password': password
    };
    try {
      var response = await http.post(
          Uri.parse("http://cdemo.magnifyingevents.com/api/users/user_signup"),
          body: data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        setState(() {
          isLoading = false;
        });
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (BuildContext context) => const ChooseAuth()),
            (Route<dynamic> route) => false);
      } else {
        setState(() {
          isLoading = false;
        });
        print("Server Error");
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print(e);
    }
  }
}

// {
//     "name": "test ",
//     "last_name": " okko",
//     "mob_no":"95363636",
//     "email":"testrrt@gmail.com",
//     "city":"rnc",
//     "pincode":"8340009",
//     "state":"Jh",
//     "username":"yfrtr",
//     "password":"123456",
//     "user_img":"abc.pmg"
// }
