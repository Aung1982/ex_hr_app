import 'package:flutter/material.dart';

class ReportV extends StatefulWidget {
  @override
  _ReportVState createState() => _ReportVState();
}
class _ReportVState extends State<ReportV> {
  @override

  Widget build(BuildContext context) {

    final List<Map<String, String>> listOfPetrol = [
    {"logo": "assets/icon.png", "location": "Johnson Road 1235", "distance": "\100.2", "price":"\$12.45", "facilities":"ATM, Restaurant"},
    {"logo": "assets/icon.png", "location": "Hennessy Road", "distance": "\10.5", "price":"\$10.00", "facilities":"Toilet"},
    {"logo": "assets/icon.png", "location": "Lockhart Rd", "distance": "\10200.9", "price":"\$11.20", "facilities":"ATM"}
  ];
    return   
       Scaffold(
         body: SingleChildScrollView(
                         child: DataTable(
                    columns: [
                      DataColumn(label: Text('Logo')),
                      DataColumn(label: Text('Location')),
                      DataColumn(label: Text('Distance'),numeric: true),
                      DataColumn(label: Text('Price'),numeric: true),
                      DataColumn(label: Text('Facilities')),
                    ],
                    rows:
                    listOfPetrol
                        .map(
                      ((element) => DataRow(
                        cells: <DataCell>[
                          DataCell(Image.asset(element["logo"])),
                          DataCell(Text(element["location"])),
                          DataCell(Text(element["distance"])),
                          DataCell(Text(element["price"])),
                          DataCell(Text(element["facilities"])),
                        ],
                      )),
                    )
                        .toList(),
                  )
         )
    );
    

  }
}