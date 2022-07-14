import 'package:ecommerce_using_firebase/widget/full_cart.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_using_firebase/widget/empty_cart.dart';

class CartSceen extends StatelessWidget {
  const CartSceen({Key? key}) : super(key: key);
  static const routeName = '/Cart-screen';

  @override
  Widget build(BuildContext context) {
    List _product = [];
    return Scaffold(
      body: !_product.isEmpty
          ? Scaffold(body: EmptyCart())
          : Scaffold(
              appBar: AppBar(
                title: Center(child: Text('Cart')),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete))
                ],
              ),
              body: Container(
                margin: EdgeInsets.only(bottom: 40),
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(4.0),
                  itemCount: 10,
                  itemBuilder: (context, i) => FullCart(),
                ),
              ),
              bottomSheet: _bottomCheckOutSectoin(),
            ),
    );
  }
}

Widget _bottomCheckOutSectoin() {
  return Container(
    width: double.infinity,
    height: 50,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              'Total: \$ 5000.00',
              style: TextStyle(fontSize: 18),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Checkout'))
        ],
      ),
    ),
  );
}
