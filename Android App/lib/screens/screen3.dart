import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/marketStatus.dart';

class FarmProductsPage extends StatefulWidget {
  const FarmProductsPage({Key? key}) : super(key: key);

  @override
  _FarmProductsPageState createState() => _FarmProductsPageState();
}
// Using demo data for now
class _FarmProductsPageState extends State<FarmProductsPage> {
    final List<Map<String, dynamic>> _farmProducts = [
    {'product': 'Tomatoes', 'market1': '10/kg', 'market2': '12/kg'},
    {'product': 'Potatoes', 'market1': '8/kg', 'market2': '9/kg'},
    {'product': 'Onions', 'market1': '15/kg', 'market2': '18/kg'},
    {'product': 'Carrots', 'market1': '12/kg', 'market2': '14/kg'},
    {'product': 'Cucumbers', 'market1': '9/kg', 'market2': '11/kg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Farm Products Rates'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Product')),
            DataColumn(label: Text('Market 1')),
            DataColumn(label: Text('Market 2')),
          ],
          rows: _farmProducts
              .map((product) => DataRow(cells: [
                    DataCell(Text(product['product'].toString())),
                    DataCell(Text(product['market1'].toString())),
                    DataCell(Text(product['market2'].toString())),
                  ]))
              .toList(),
        ),
      ),
    );
  }
}
