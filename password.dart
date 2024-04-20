import 'package:flutter/material.dart';
//import 'package:flutter_application_1/Smd/login.dart';
import 'package:flutter_application_1/Smd/otp.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _isObscure = true;
  bool _isObscure1 = true;
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
                  'RESET YOUR PASSWORD',
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
                    controller: _newPasswordController,
                    obscureText: _isObscure1,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: _isObscure1
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                        iconSize: 15,
                        onPressed: () {
                          setState(() {
                            _isObscure1 = !_isObscure1;
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
                      hintText: 'New Password',
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    controller: _confirmPasswordController,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: _isObscure
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
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
                      hintText: 'Confirm Password',
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (cxt) {
                          return const Otp();
                        }));
                      },
                      child: Text(
                        '  Reset Password ',
                        style: const TextStyle(color: Colors.black87),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
