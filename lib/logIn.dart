import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius:
                const BorderRadius.only(bottomLeft: Radius.circular(100)),
            color: Colors.amber[600],
          ),
          width: lebar,
          height: tinggi * 0.4,
          child: Column(
            children: [
              SizedBox(
                height: tinggi * 0.05,
              ),
              Image(
                image: const AssetImage('assets/icon/favicon.png'),
                width: lebar * 0.3,
                height: tinggi * 0.2,
              ),
            ],
          ),
        ),
        SizedBox(
          height: tinggi * 0.05,
        ),
        Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: lebar * 0.8,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        alignLabelWithHint: false,
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 0.5, color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email)),
                    // validator: (value) {
                    //   if (value.isEmpty) {
                    //     return 'Please enter your email';
                    //   }
                    //   return null;
                    // },
                    // onSaved: (value) {
                    //   _email = value;
                    // },
                  ),
                ),
                SizedBox(
                  height: tinggi * 0.02,
                ),
                SizedBox(
                  width: lebar * 0.8,
                  child: TextFormField(
                    decoration:  InputDecoration(
                      border: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.5, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.remove_red_eye_sharp),),
                      labelText: 'Password',
                    ),
                    obscureText: true,
                    // validator: (value) {
                    //   if (value.isEmpty) {
                    //     return 'Please enter your password';
                    //   }
                    //   return null;
                    // },
                    // onSaved: (value) {
                    //   _password = value;
                    // },
                  ),
                ),
                SizedBox(
                  height: tinggi * 0.05,
                ),
                RawMaterialButton(
                  onPressed: () {},
                  fillColor: Colors.amber,
                  elevation: 2.0,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  constraints: BoxConstraints(
                    minWidth: lebar * 0.8,
                    maxWidth: lebar * 0.8,
                  ),
                ),
              ],
            ))
      ],
    ));
  }
}
