import 'package:flutter/material.dart';
import 'package:flutter_application_1/Smd/login.dart';

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Image.asset('assess/images/CURRENT.png', width: 500, height: 200),
              const SizedBox(height: 8),
              //Container(
              //width: 300,
              //height: 250,
              //decoration: BoxDecoration(
              //color: Colors.white24,
              //borderRadius: BorderRadius.circular(0),
              //),
              //child: Padding(
              //padding: const EdgeInsets.all(10.0),
              //child:
              //Column(
              //children: [
              const Text(
                'CREATE AN ACCOUNT',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70),
              ),
              const SizedBox(
                height: 8,
              ),
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
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 250,
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
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
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (cxt) {
                        return ScreenLogin();
                      }),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0)) // Make the button square
                      ),
                  child: const Text('Sign Up',
                      style: TextStyle(color: Colors.black87)),
                ),
              ),
            ],
          ),
        ),
      ),
      //]),
      //),
      //),
    );
  }
}
