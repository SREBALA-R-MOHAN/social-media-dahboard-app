import 'package:flutter/material.dart';
import 'package:flutter_application_1/Smd/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    gotoLogin();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Image.asset('assess/images/CURRENT.png', width: 300, height: 300),
              //const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  void dispose() {
    super.dispose();
  }

  Future<void> gotoLogin() async {
    await Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (cxt) {
          return ScreenLogin();
        },
      ));
    });
  }
}
