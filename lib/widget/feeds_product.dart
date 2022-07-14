import 'package:badges/badges.dart';
import 'package:ecommerce_using_firebase/widget/sized_box_white_space.dart';
import 'package:flutter/material.dart';

class FeedsProduct extends StatefulWidget {
  const FeedsProduct({Key? key}) : super(key: key);

  @override
  State<FeedsProduct> createState() => _FeedsProductState();
}

class _FeedsProductState extends State<FeedsProduct> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.all(5.0),
        height: 308,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.grey),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(
                  minHeight: 130,
                  maxHeight: MediaQuery.of(context).size.height * .2),
              child: Image.network(
                  'https://www.tct.com.bd/wp-content/uploads/2021/01/ryjen-1.jpg'),
            ),
            SizedBoxHeight(height: 10),
            Text(
              'Description',
              maxLines: 1,
              style: TextStyle(fontSize: 18, overflow: TextOverflow.ellipsis),
            ),
            SizedBoxHeight(height: 4),
            Text(
              '\$ 300.00',
              maxLines: 1,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  overflow: TextOverflow.ellipsis),
            ),
            SizedBoxHeight(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Quantity: 12 left',
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      overflow: TextOverflow.ellipsis),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.more_horiz),
                )
              ],
            )
          ],
        ),
      ),
      Badge(
        toAnimate: true,
        animationType: BadgeAnimationType.slide,
        shape: BadgeShape.square,
        badgeColor: Colors.redAccent,
        borderRadius: BorderRadius.circular(8),
        badgeContent: Text(
          'New',
          style: TextStyle(color: Colors.white),
        ),
      )
    ]);
  }
}
