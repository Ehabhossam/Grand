import 'package:flutter/material.dart';

class Emp_list extends StatelessWidget {

  final List<List<String>> _dataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'قائمة الموظف',
          style: TextStyle(
            fontSize: 36,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(label: Text('كود الموظف')),
            DataColumn(label: Text('الاسم')),
            DataColumn(label: Text('الرقم القومى')),
            DataColumn(label: Text('رقم الهاتف')),
            DataColumn(label: Text(' العنوان ')),
            DataColumn(label: Text(' الوظيفة ')),
            DataColumn(label: Text(' الراتب الشهرى ')),
          ],
          rows: _dataList.map((data) {
            return DataRow(cells: [
              for (var item in data) DataCell(Text(item)),
            ]);
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addNewRowAutomatically();
        },
        child: Icon(Icons.add),
      ),
    );
  }


  void _addNewRowAutomatically() {
    List<String> newRow = ['', '', '', '', '', '', ''];
    _dataList.add(newRow);


  }
}
