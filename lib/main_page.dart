

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:grand/cars.dart';

import 'package:grand/drivers.dart';
import 'package:grand/employees.dart';



class main_page extends StatelessWidget {

  IconData directions_car = IconData(0xe1d7, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      
        appBar: AppBar(
      backgroundColor : Color.fromARGB(255, 0, 0, 0),
      centerTitle: true,
      title: Text('Grand',
      style: TextStyle(
        color: Colors.white,
        fontSize: 36,
        fontWeight: FontWeight.bold,
      ),),
      leading: BackButton(
     color: Colors.white,
       ),),
       body:   
       
       GestureDetector(
      
         child:
         
          
           
            
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    Text(' ',style: TextStyle(fontSize: 20,
                                     color: const Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold),),
                                    IconButton(onPressed: (){
                                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                           return cars();
                     }));
                                    }, icon:const Icon(Icons.directions_car ,
                                     size: 60, color: Color.fromARGB(255, 0, 0, 0),), ),
                                     Text('المركبات',style: TextStyle(fontSize: 20,
                                     color: const Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold),),
                     
                     
                           
                    Text(' ',style: TextStyle(fontSize: 20,
                                     color: const Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold),),
                                    IconButton(onPressed: (){
                                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                           return drivers();
                     }));
                                    }, icon:const Icon(Icons.personal_injury_outlined ,
                                     size: 60, color: Color.fromARGB(255, 0, 0, 0),), ),
                                     Text('السائقين',style: TextStyle(fontSize: 20,
                                     color: const Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold),),
                     
                        
                        Text(' ',style: TextStyle(fontSize: 20,
                                        color: const Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold),),
                                       IconButton(onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                              return employees();
                        }));
                                       }, icon:const Icon(Icons.person_4 ,
                                        size: 60, color: Color.fromARGB(255, 0, 0, 0),), ),
                                        Text('الموظفين',style: TextStyle(fontSize: 20,
                                        color: const Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold),),
                                
                      ],
                     
                    ),
              ),
              
              ),
               
               

                
                        
            
            
          
       );
       
       
  }
}