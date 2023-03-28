import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final String title;
  final DateTime date;
  final double price;
  final int quantity;
  bool isSold;
  bool isApproved;

  Product({
    required this.id,
    required this.title,
    required this.date,
    required this.price,
    required this.quantity,
    this.isSold=false,
    this.isApproved=false,
  });

  void toggleSold(){
    isSold=!isSold;
    notifyListeners();
  }
}