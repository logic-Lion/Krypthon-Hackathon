import 'package:flutter/material.dart';

class BankLoanScheme with ChangeNotifier{
  String bankName;
  int minProfitMargin;

  BankLoanScheme({
    required this.bankName,
    required this.minProfitMargin,
  });
}