import 'package:flutter/material.dart';
import 'package:grand/add_employee.dart';
import 'package:grand/edit_employee.dart';
import 'package:grand/list_employee.dart';

class employees extends StatelessWidget {


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
GestureDetector(
     child: Row(
      
      
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          
    
          children: [
            SizedBox(height: 60,),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return Addemp();
              }));
            }, icon:const Icon(Icons.add, 
            size: 60, color: Color.fromARGB(255, 0, 0, 0),), ),
            Text('اضافة بيانات جديدة',
            style:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold) ,),
SizedBox(height: 50,),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return Emp_list();
              }));
            }, icon:const Icon(Icons.dataset, 
            size: 60, color: Color.fromARGB(255, 0, 0, 0),), ),
            Text(' قائمة الموظفين    ',
            style:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold) ,),

            SizedBox(height: 50,),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return Emp_edit();
              }));
            }, icon:const Icon(Icons.report_gmailerrorred_rounded, 
            size: 60, color: Color.fromARGB(255, 0, 0, 0),), ),
            Text('تعديل البيانات',
            style:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold) ,),

          
          ],
        )
        
      ],
     ),
   )


    );
}
}