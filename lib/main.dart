import 'package:flutter/material.dart';
import 'package:grand/home.dart';

void main() {
  runApp(Grand());
}

class Grand extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Home(),
    );
  }
}
