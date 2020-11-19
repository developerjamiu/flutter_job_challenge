import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/constants.dart';
import '../widgets/header_custom_painter.dart';
import '../widgets/pill_tab_bar.dart';
import 'info_page.dart';
import 'services_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;

  void onPageChanged(int index) {
    setState(() => _currentPage = index);
  }

  final pages = <Widget>[
    InfoPage(),
    ServicesPage(),
    Center(child: Text('Reviews')),
    Center(child: Text('Products')),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _header(),
                SizedBox(height: 8.0),
                Expanded(child: pages[_currentPage]),
                SizedBox(height: 72.0),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(gradient: kPrimaryGradient),
                height: 72,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Make appointment',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Stack(
      children: [
        Card(
          elevation: 2,
          margin: const EdgeInsets.all(0),
          child: Container(height: 226),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomPaint(
              size: Size(0, 175),
              painter: HeaderCustomPainter(),
            ),
            PillTabBar(
              items: [
                'Info',
                'Services',
                'Reviews',
                'Products',
              ],
              onChanged: onPageChanged,
            ),
          ],
        ),
        Positioned(
          left: 16,
          right: 16,
          top: 32,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(CupertinoIcons.back, color: Colors.white, size: 30),
              Icon(CupertinoIcons.share_up, color: Colors.white),
            ],
          ),
        ),
        Positioned(
          bottom: 60,
          left: 27,
          right: 0,
          child: Row(
            children: [
              CircleAvatar(
                radius: 50,
                child: Image.asset('assets/images/avatar.png'),
              ),
              SizedBox(width: 16.0),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Al-Bakheet Garage',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Lights and LED breaks',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Icon(CupertinoIcons.heart, color: Colors.white, size: 36),
              SizedBox(width: 16.0),
            ],
          ),
        ),
      ],
    );
  }
}
