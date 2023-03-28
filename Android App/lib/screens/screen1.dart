import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';

//import 'screen_new.dart';

import '../widgets/home_list.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final prodDetails = Provider.of<Products>(context);
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.9,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(37, 108, 52, 1),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Profit Flip',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: IconButton(
                        onPressed: (){
                          //TODO LISTNEWPRODUCT
                        },
                        icon: Icon(Icons.add),
                        color: Colors.white,
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Hi Farmer!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(165, 208, 90, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.only(right: 30),
              alignment: Alignment.topCenter,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/avatVeggie.png',
                        height: MediaQuery.of(context).size.height * 0.25,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ' ₹ ${prodDetails.approvedItemCost}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                                ' / ${prodDetails.approvedItemCost + prodDetails.InMarketItemsCost}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ]),
                    )
                    // Column(
                    //   children: [
                    //     Text('Name'),
                    //     Text('ID'),
                    //   ],
                    // ),
                  ]),
            ),
          ),
        ),
        SingleChildScrollView(
          //controller: _Lvl1Controller,
          child: Padding(
            padding: const EdgeInsets.only(top: 350),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 20, left: 15, right: 15, bottom: 5),
              height: MediaQuery.of(context).size.height * 0.7,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: HomeList(),
            ),
          ),
        ),
      ],
    );
  }
}
