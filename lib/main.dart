import 'package:flutter/material.dart';

import 'views/pages/home_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Challenge',
      home: HomePage(),
    );
  }
}
