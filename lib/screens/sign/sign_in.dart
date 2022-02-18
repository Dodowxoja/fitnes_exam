//LOGIN - Kirish
import 'package:fitnes/core/components/input.dart';
import 'package:fitnes/core/constants/const.dart';
import 'package:fitnes/data/user_info.dart';
import 'package:fitnes/widgets/scaffold_massenger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final String assetName = 'assets/icons/google.svg';
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final Widget svgIcon = SvgPicture.asset('assets/icons/google.svg');
  bool securite = true;

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
                        TextConst.text1,
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
                              controller: _emailController,
                              decoration: Input1Comp.inputDecoration(
                                prefixIcon: const Icon(Icons.email_outlined),
                                hindText: 'Email',
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 10),
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
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                TextConst.text2,
                                style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xFFADA4A5),
                                ),
                              ),
                            )
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
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () => singIn(),
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
                        Text(TextConst.text3),
                        TextButton(
                          child: const Text(
                            'Register',
                            style: TextStyle(color: Color(0xFFDAACF0)),
                          ),
                          onPressed: () => Navigator.pushReplacementNamed(
                            context,
                            '/sign_up',
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

  singIn() {
    if (_formKey.currentState!.validate()) {
      for (var userpass in UsersInfo.users) {
        if (userpass.email == _emailController.text &&
            userpass.password == _passwordController.text) {
          Navigator.pushReplacementNamed(
            context,
            '/home',
            arguments: [userpass.lName, userpass.fName, userpass.email],
          );
          return true;
        }
      }
      MyMessenger.showMyMessenger("Username yoki password !", context);
    }
  }
}
