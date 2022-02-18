//Registor = Registratsiya
import 'package:fitnes/core/components/input.dart';
import 'package:fitnes/core/constants/const.dart';
import 'package:fitnes/data/user_info.dart';
import 'package:fitnes/model/mode.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final String assetName = 'assets/icons/google.svg';
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool securite = true;

  bool chekbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 7,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        TextConst.t,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 30),
                      child: Text(
                        TextConst.t1,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _firstNameController,
                              decoration: Input1Comp.inputDecoration(
                                prefixIcon: const Icon(Icons.person_outline),
                                hindText: 'First Name',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: TextFormField(
                                controller: _lastNameController,
                                decoration: Input1Comp.inputDecoration(
                                  prefixIcon: const Icon(Icons.person_outline),
                                  hindText: 'Last Name',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: TextFormField(
                                controller: _emailController,
                                decoration: Input1Comp.inputDecoration(
                                  prefixIcon: const Icon(Icons.email_outlined),
                                  hindText: 'Email',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: TextFormField(
                                obscureText: securite,
                                controller: _passwordController,
                                decoration: Input2Comp.inputDecoration(
                                  prefixIcon: const Icon(Icons.lock_outline),
                                  hindText: 'Password',
                                  suffixIcon: IconButton(
                                    icon: const Icon(Icons.remove_red_eye),
                                    onPressed: () {
                                      setState(() => securite = !securite);
                                    },
                                  ),
                                ),
                              ),
                            ),
                            CheckboxListTile(
                              title: Text(
                                TextConst.t2,
                                style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xFFADA4A5),
                                ),
                              ),
                              value: chekbox,
                              onChanged: (newValue) {
                                setState(() => chekbox = !chekbox);
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 315,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF9DCEFF), Color(0xFF92A3FD)],
                          ),
                          borderRadius: BorderRadius.circular(99)),
                      child: TextButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          fixedSize: const Size(315, 60),
                        ),
                        child: const Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            String fName = _firstNameController.text.trim();
                            String lName = _lastNameController.text.trim();
                            String email = _emailController.text.trim();
                            String pw = _passwordController.text.trim();
                            Model user = Model(
                              fName: fName,
                              lName: lName,
                              email: email,
                              password: pw,
                            );
                            UsersInfo.users.add(user);
                            Navigator.pushReplacementNamed(context, '/sign_in');
                          }
                        },
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(
                              left: 10.0,
                              right: 15.0,
                            ),
                            child: const Divider(
                              color: Colors.black,
                              height: 50,
                              thickness: 0.1,
                            ),
                          ),
                        ),
                        const Text('Or'),
                        Expanded(
                          child: Container(
                            margin:
                                const EdgeInsets.only(left: 15.0, right: 10.0),
                            child: const Divider(
                              color: Colors.black,
                              height: 50,
                              thickness: 0.1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          margin: const EdgeInsets.only(right: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14)),
                          child: const Image(
                              image: AssetImage('assets/icons/google.png')),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Image(
                            image: AssetImage('assets/icons/Vector.png'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(TextConst.t3),
                        TextButton(
                          child: const Text(
                            'Login',
                            style: TextStyle(color: Color(0xFFDAACF0)),
                          ),
                          onPressed: () => Navigator.pushReplacementNamed(
                            context,
                            '/sign_in',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
