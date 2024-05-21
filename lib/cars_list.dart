import 'package:flutter/material.dart';

class cars_list extends StatelessWidget {

  final List<List<String>> _dataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'قائمة المركبات',
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
            DataColumn(label: Text('كود السيارة')),
            DataColumn(label: Text('الماركة')),
            DataColumn(label: Text('الفئة')),
            DataColumn(label: Text('اللون')),
            DataColumn(label: Text('لوحة المركبة')),
            DataColumn(label: Text('كود السائق')),
            DataColumn(label: Text('اسم السائق')),
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
