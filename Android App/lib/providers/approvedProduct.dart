import 'package:flutter/material.dart';

class ApprovedProduct with ChangeNotifier{
  final String id;
  final String title;
  final DateTime date;
  final double price;
  final int quantity;
  bool isSold;
  bool isApproved;

  ApprovedProduct({
    required this.id,
    required this.title,
    required this.date,
    required this.price,
    required this.quantity,
    this.isSold=false,
    this.isApproved=false,
  });
}