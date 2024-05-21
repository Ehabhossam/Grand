
import 'package:flutter/material.dart';

import 'package:grand/reg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    
    Future.delayed(Duration(seconds: 3), () {
      
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Reg_page()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
        title: Text(
          'Grand',
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GestureDetector(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Spacer(flex: 1,),
            Center(
              child: CircleAvatar(
                radius: 162,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 160,
                  backgroundImage: AssetImage('images/جراند.png'),
                ),
              ),
            ),
            Spacer(flex: 3,),
            Spacer(flex: 1,),
            Text(
              ' Engineero ',
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 0, 0, 0),
                backgroundColor: Color.fromARGB(255, 255, 230, 0),
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }
}

