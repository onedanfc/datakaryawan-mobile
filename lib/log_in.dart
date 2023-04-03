import 'package:datakaryawan_mobile/daftar_karyawan.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool obskur = false;
  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
              color: Color(0xFF9A208C),
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
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.purple.withOpacity(0.2),
                              spreadRadius: 1,
                              // blurRadius: 2,
                              offset: const Offset(1, 2),
                            ),
                          ]),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            labelText: 'Username',
                            labelStyle: TextStyle(color: Color(0xffE11299)),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xffE11299),
                            )),
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
                  ),
                  SizedBox(
                    height: tinggi * 0.04,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.purple.withOpacity(0.2),
                            spreadRadius: 1,
                            // blurRadius: 2,
                            offset: const Offset(1, 2),
                          ),
                        ]),
                    width: lebar * 0.8,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30))),
                        prefixIcon:
                            const Icon(Icons.lock, color: Color(0xffE11299)),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                              obskur = !obskur;
                              });
                            },
                            icon: Icon((obskur == false)
                                ? Icons.remove_red_eye_rounded
                                : Icons.visibility_off_rounded, color: const Color(0xffE11299),)),
                        labelText: 'Password',
                        labelStyle: const TextStyle(color: Color(0xffE11299)),
                      ),
                      obscureText: (obskur == false) ? false : true,
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
                    height: tinggi * 0.1,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.purple.withOpacity(0.2),
                          spreadRadius: 1,
                          // blurRadius: 2,
                          offset: const Offset(1, 1),
                        ),
                      ],
                    ),
                    child: RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DaftarKaryawan()),
              );
                      },
                      fillColor: const Color(0xFF9A208C),
                      elevation: 2.0,
                      
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
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ))
              ],
            ),
        ));
  }
}
