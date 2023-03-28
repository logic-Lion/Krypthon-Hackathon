import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import './custom_listTile.dart';

class HomeList extends StatefulWidget {
  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  bool isApproved = false;

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Products>(context);
    final productList = isApproved ? product.approved : product.inMarket;
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          'Listed',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.agriculture,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    print('Listed');
                    setState(() {
                      isApproved = false;
                    });
                  }),
              GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Approved'),
                        Icon(
                          Icons.sell,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    print('Approved');
                    setState(() {
                      isApproved = true;
                    });
                  }),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.55,
          child: ListView.builder(
            itemBuilder: (_, index) => CustomListTile(
              icon: Icons.shopping_cart,
              title: productList[index].title,
              date: productList[index].title,
              cost: productList[index].price,
              isApproved: isApproved,
            ),
            itemCount: productList.length,
          ),
        ),
      ],
    );
  }
}
