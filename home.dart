//import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Smd/Schedule.dart';
import 'package:flutter_application_1/Smd/Analytics.dart';
import 'package:flutter_application_1/Smd/Notification.dart';
import 'package:flutter_application_1/Smd/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var height, width;
  List imgsrc = [
    "assess/images/Schedule.png",
    "assess/images/Analytics.png",
    "assess/images/Notification.png",
  ];
  List title = ["SCHEDULE", "ANALYTICS", "NOTIFICATION"];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      // appBar: AppBar(
      // backgroundColor: Colors.pink,
      //   leading: IconButton(
      //   icon: Icon(Icons.menu),
      //     onPressed: () {
      //  //  _scaffoldKey.currentState!.openDrawer();
      //  },
      //  ),
      // ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              child: Text(
                'Dashboard',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sign out'),
              onTap: () {
                signout(context);
              },
            ),
          ],
        ),
      ),
      //bottomNavigationBar: BottomNavigationBar(
      //items: const <BottomNavigationBarItem>[
      //BottomNavigationBarItem(
      //icon: Icon(Icons.home, color: Color.fromARGB(255, 214, 83, 127)),
      //label: 'Home',
      //),
      //BottomNavigationBarItem(
      //icon: Icon(Icons.power_settings_new,
      //color: Color.fromARGB(255, 214, 83, 127)),
      //label: 'Logout',
      //),
      //],
      //),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.pink,
        ),
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(),
              height: height * 0.30,
              width: width,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: InkWell(
                          child: const Icon(
                            Icons.sort,
                            color: Colors.white,
                            size: 40,
                          ),
                          onTap: () {
                            _scaffoldKey.currentState!.openDrawer();
                          },
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assess/images/CURRENT1.png',
                    height: 100,
                    width: 700,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                width: width,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.2,
                  ),
                  shrinkWrap: true,
                  itemCount: imgsrc.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pink,
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              imgsrc[index],
                              height: 100,
                              width: 100,
                            ),
                            GestureDetector(
                                child: Text(
                                  title[index],
                                  style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w300,
                                    color: Color.fromARGB(255, 214, 83, 127),
                                  ),
                                ),
                                onTap: () {
                                  if (index == 0) {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (cxt) {
                                        return Schedule();
                                      }),
                                    );
                                  } else if (index == 1) {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (cxt) {
                                        return Analytics();
                                      }),
                                    );
                                  } else if (index == 2) {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (cxt) {
                                        return notification();
                                      }),
                                    );
                                  }
                                }),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  signout(BuildContext ctx) async {
    final _sharedprefs = await SharedPreferences.getInstance();
    _sharedprefs.clear();

    Navigator.of(ctx).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx) {
      return ScreenLogin();
    }), (route) => false);
  }
}
