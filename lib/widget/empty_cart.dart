import 'package:flutter/material.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 80),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/emptycart.png'),
                    fit: BoxFit.fill)),
          ),
          Text(
            'Your cart is empty.',
            style: TextStyle(fontSize: 32),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Shop Now',
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
