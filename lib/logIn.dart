import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: const [
        Text(
          'Ini Halaman masuk',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              // fontFamily: 'Satoshi',
              fontSize: 50.0),
        ),
        Image(image: AssetImage('assets/icon/favicon.png'))
      ],
    ));
  }
}
