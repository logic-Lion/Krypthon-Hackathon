import 'package:flutter/material.dart';

import './product.dart';

// import './ApprovedProduct.dart';
// import './SoldProduct.dart';
// import './ListedProduct.dart';

class Products with ChangeNotifier{
  //dummy values

  //final List<ApprovedProduct> _approvedItems=[];
  //final List<SoldProduct> _soldItems=[];
  //final List<ListedProduct> _listedItems=[];

  final List<Product> _items= [
    Product(
      id: 'p1',
      title: 'Tomato',
      date: DateTime.now(),
      price: 10,
      quantity: 2,
      isApproved: true,
    ),
    Product(
      id: 'p2',
      title: 'Potato',
      date: DateTime.now(),
      price: 20,
      quantity: 5,
      isSold: true
    ),
    Product(
      id: 'p3',
      title: 'Onion',
      date: DateTime.now(),
      price: 30,
      quantity: 7,
    ),
    Product(
      id: 'p4',
      title: 'Cabbage',
      date: DateTime.now(),
      price: 40,
      quantity: 4,
      isApproved: true,
    ),
    Product(
      id: 'p5',
      title: 'Carrot',
      date: DateTime.now(),
      price: 50,
      quantity: 6,
      isSold: true,
      isApproved: true,
    ),
    Product(
      id: 'p6',
      title: 'Cauliflower',
      date: DateTime.now(),
      price: 60,
      quantity: 3,
      isSold: true,
    ),
    Product(
      id: 'p7',
      title: 'Brinjal',
      date: DateTime.now(),
      price: 70,
      quantity: 1,
      isApproved: true,
    ),
    Product(
      id: 'p8',
      title: 'Capsicum',
      date: DateTime.now(),
      price: 80,
      quantity: 2,
    ),
    Product(
      id: 'p9',
      title: 'Garlic',
      date: DateTime.now(),
      price: 90,
      quantity: 3,
    ),
    Product(
      id: 'p10',
      title: 'Ginger',
      date: DateTime.now(),
      price: 100,
      quantity: 4,
      isApproved: true,
    ),
    Product(
      id: 'p11',
      title: 'Spinach',
      date: DateTime.now(),
      price: 110,
      quantity: 5,
    ),
    Product(
      id: 'p12',
      title: 'Lettuce',
      date: DateTime.now(),
      price: 120,
      quantity: 6,
    ),
    Product(
      id: 'p13',
      title: 'Cucumber',
      date: DateTime.now(),
      price: 130,
      quantity: 7,
    ),
    Product(
      id: 'p14',
      title: 'Bitter Gourd',
      date: DateTime.now(),
      price: 140,
      quantity: 2,
    ),
    Product(
      id: 'p15',
      title: 'Bottle Gourd',
      date: DateTime.now(),
      price: 150,
      quantity: 3,
    ),
    Product(
      id: 'p16',
      title: 'Pumpkin',
      date: DateTime.now(),
      price: 150,
      quantity: 3,)
  ];

  void addNewItem(String title, int Price){
    _items.add(Product(
      id: DateTime.now().toString(),
      title: 'New Item',
      date: DateTime.now(),
      price: 0,
      quantity: 0,
    ));
    notifyListeners();
  }

  List<Product> get items{
    return [..._items];
  }

  List<Product> get inMarket{
    return _items.where((prodItem) => prodItem.isSold==false).toList();
  }

  List<Product> get sold{
    return _items.where((prodItem) => prodItem.isSold==true).toList();
  }

  List<Product> get approved{
    return _items.where((prodItem) => prodItem.isApproved==true).toList();
  }

  //make a getter to get the sum of products where isSOld==true
  
  void addnewData(String title, double rate, int quan){
    _items.add(Product(
      id: DateTime.now().toString(),
      title: 'New Item',
      date: DateTime.now(),
      price: rate,
      quantity: quan,
    ));
    notifyListeners();
  }
  double get soldItemsCost {
      double total = 0;
      for (var item in items) {
        if (item.isSold) {
          total += item.price;
        }
      }
    return total;
  }

  double get approvedItemCost{
    double total = 0;
    for (var item in items) {
      if (item.isApproved) {
        total += item.price;
      }
    }
    return total;
  }

  double get InMarketItemsCost{
    double total = 0;
    for (var item in items) {
      if (!item.isSold) {
        total += item.price;
      }
    }
    return total;
  }
}