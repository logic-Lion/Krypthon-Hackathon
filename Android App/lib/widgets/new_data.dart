import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  final _quantityController=TextEditingController();

  void _SubmitData() {
    final enteredTitle = _titleController.text;
    final enteredAmount = double.parse(_amountController.text);

    // if (enteredTitle.isEmpty || enteredAmount <= 0 || _selectedDate==null) {
    //   return;
    // }
    widget.addTx(enteredTitle, enteredAmount, );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 10,
        child: Container(
          padding: EdgeInsets.only(
            left: 10, 
            right: 10, 
            top: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom+10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Title',
                ),
                controller: _titleController,
                onSubmitted: (_) => _SubmitData(),
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Price'),
                controller: _amountController,
                keyboardType: TextInputType.number,
                onSubmitted: (_) => _SubmitData(),
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Date'),
                controller: _quantityController,
                keyboardType: TextInputType.number,
                onSubmitted: (_) => _SubmitData(),
              ),
              ElevatedButton(
                onPressed: _SubmitData,
                child: const Text(
                  'Add Product',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
