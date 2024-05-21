import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddCar extends StatefulWidget {
  @override
  State<AddCar> createState() => _AddCarState();
}

class _AddCarState extends State<AddCar> {
  List<String> itemsList = ['دبابة', 'جامبو', 'تريلا'];
  String? selectedItem;
  String? selectedBrand;
  String? selectedColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'اضافة مركبة جديدة',
          style: TextStyle(
            fontSize: 36,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          SizedBox(height: 50),
          TextField(
            decoration: InputDecoration(
              hintText: " كود السيارة",
              labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'اختر الفئة',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Row(
                children: itemsList.map((item) {
                  return Row(
                    children: [
                      Radio<String>(
                        value: item,
                        groupValue: selectedItem,
                        onChanged: (value) {
                          setState(() {
                            selectedItem = value;
                          });
                        },
                      ),
                      Text(
                        item,
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
          SizedBox(height: 50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'اختر الماركة',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  for (String brand in ['Chevrolet', 'ISUZU', 'Mitsubishi'])
                    Row(
                      children: [
                        Radio<String>(
                          value: brand,
                          groupValue: selectedBrand,
                          onChanged: (value) {
                            setState(() {
                              selectedBrand = value;
                            });
                          },
                        ),
                        Text(
                          brand,
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                ],
              ),
            ],
          ),
          SizedBox(height: 50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'اختر اللون',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  for (String color in ['أحمر', 'أخضر', 'أبيض', 'أزرق'])
                    Row(
                      children: [
                        Radio<String>(
                          value: color,
                          groupValue: selectedColor,
                          onChanged: (value) {
                            setState(() {
                              selectedColor = value;
                            });
                          },
                        ),
                        Text(
                          color,
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                ],
              ),
            ],
          ),
          SizedBox(height: 50),
          TextField(
            decoration: InputDecoration(
              hintText: " لوحة المركبة ",
              labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 50),
          TextField(
            decoration: InputDecoration(
              hintText: " كود السائق ",
              labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 50),
          TextField(
            decoration: InputDecoration(
              hintText: " اسم السائق ",
              labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 50),
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
        ],
      ),
    );
  }
}





