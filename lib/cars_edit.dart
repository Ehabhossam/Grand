import 'package:flutter/material.dart';

class cars_edit extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white,),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(' تعديل البيانات  ',
        style:TextStyle(fontSize: 36,color: const Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold),
        ),
      ),
      body: 
          Column(
            children: [
              SizedBox(height: 50,),
              TextField(
                decoration: InputDecoration(
                  hintText: " كود السيارة",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),),
            ],
          ),);
  }
}