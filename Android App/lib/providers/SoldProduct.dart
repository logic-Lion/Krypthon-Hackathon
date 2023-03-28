import 'package:flutter/material.dart';

class SoldProduct with ChangeNotifier{
  final String transactionId;
  final String title;
  final DateTime date;
  final double price;
  final int quantity;
  bool isSold;
  bool isApproved;

  SoldProduct({
    required this.transactionId,
    required this.title,
    required this.date,
    required this.price,
    required this.quantity,
    this.isSold=false,
    this.isApproved=false,
  });
}