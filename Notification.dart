import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.pink,
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              height: height * 0.30,
              width: width,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: InkWell(
                          onTap: () {
                            // Open drawer when sort icon is tapped
                            //Scaffold.of(context).openDrawer();
                          },
                          child: const Icon(
                            Icons.sort,
                            color: Colors.white,
                            size: 40,
                          ),
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
              height: height * 0.75,
              width: width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
