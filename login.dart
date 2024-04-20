import 'package:flutter/material.dart';
import 'package:flutter_application_1/Smd/home.dart';
//import 'package:flutter_application_1/Smd/signup.dart';
import 'package:flutter_application_1/Smd/password.dart';
import 'package:flutter_application_1/Smd/signup.dart';

class ScreenLogin extends StatefulWidget {
  ScreenLogin({Key? key}) : super(key: key);
  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assess/images/CURRENT.png',
                    width: 500, height: 200),
                const SizedBox(height: 5),
                const Text(
                  'LOGIN TO YOUR ACCOUNT',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(width: 2)),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      filled: true,
                      fillColor: Colors.white10,
                      hintText: 'Email or Phone Number',
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        iconSize: 15,
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(width: 2)),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      filled: true,
                      fillColor: Colors.white10,
                      hintText: 'Password',
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (cxt) {
                          return home();
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white70,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0)) // Make the button square
                        ),
                    child: const Text('  Login  ',
                        style: TextStyle(color: Colors.black87)),
                  ),
                ),
                //const SizedBox(height: 2),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (cxt) {
                          return Signup();
                        }),
                      );
                    },
                    child: Text('Sign Up',
                        style: const TextStyle(color: Colors.black87)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white70,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0)) // Make the button square
                        ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (cxt) {
                        return const Password();
                      }),
                    );
                  },
                  child: const Text(
                    'FORGOT PASSWORD',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
