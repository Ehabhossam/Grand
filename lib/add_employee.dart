import 'package:flutter/material.dart';

class Addemp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الموظفين',style: TextStyle(fontSize: 36,
      color: Color.fromARGB(255, 255, 255, 255),
      fontWeight: FontWeight.bold),),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
     centerTitle: true, leading: BackButton(
     color: Colors.white,
   ),),
     body: 
          Column(
            children: [
              SizedBox(height: 50,),
              TextField(
                decoration: InputDecoration(
                  hintText: " كود الموظف",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),),

                  SizedBox(height: 30 ,),
              TextField(
                decoration: InputDecoration(
                  hintText: " اسم الموظف",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),),

                  SizedBox(height: 30 ,),
              TextField(
                decoration: InputDecoration(
                  hintText: " الرقم القومى ",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),),

                  SizedBox(height: 30 ,),
              TextField(
                decoration: InputDecoration(
                  hintText: " رقم الهاتف ",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),),

                  SizedBox(height: 30 ,),
              TextField(
                decoration: InputDecoration(
                  hintText: " العنوان ",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),),

                  SizedBox(height: 30 ,),
              TextField(
                decoration: InputDecoration(
                  hintText: " الوظيفة ",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),),

                  SizedBox(height: 30 ,),
              TextField(
                decoration: InputDecoration(
                  hintText: " المرتب الشهرى ",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),),


                  Spacer(flex: 6,),
         ElevatedButton(
  onPressed: () {
    
  },
  style: ElevatedButton.styleFrom(
    backgroundColor:  Colors.black, 
  ),
  child: Text(
    'حفظ',
    style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
  ),
),
          Spacer(flex: 1,),
            ],
    ));
  }}

