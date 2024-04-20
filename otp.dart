import 'package:flutter/material.dart';
import 'package:flutter_application_1/Smd/login.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);
  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final TextEditingController _onetimePassword = TextEditingController();
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
                const SizedBox(height: 8),
                const Text(
                  'OTP VERIFICATION',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    controller: _onetimePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(width: 2)),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      filled: true,
                      fillColor: Colors.white10,
                      hintText: 'Enter the otp',
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (cxt) {
                          return ScreenLogin();
                        }),
                      );
                    },
                    child: const Text('Verify otp',
                        style: TextStyle(color: Colors.black87)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white70,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0)) // Make the button square
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
