import 'package:chatty/pages/chatty.dart';
import 'package:chatty/pages/homepage.dart';

import 'package:flutter/material.dart';

void main() => runApp(Chatty());

class Chatty extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()    
    );
  }
}