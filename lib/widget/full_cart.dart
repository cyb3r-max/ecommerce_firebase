import 'package:flutter/material.dart';

class FullCart extends StatefulWidget {
  const FullCart({Key? key}) : super(key: key);

  @override
  State<FullCart> createState() => _FullCartState();
}

class _FullCartState extends State<FullCart> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 170, //MediaQuery.of(context).size.height,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16))),
              child: Row(
                children: [
                  Container(
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://www.techlandbd.com/image/cache/catalog/Monitor/Walton/WD215V04%20/walton-wd215v04-2145-inch-monitor-03.jpg-500x500.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                              child: Text(
                            'Monitor',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 18),
                          )),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.delete_rounded,
                                color: Colors.red,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Price: ',
                            style: TextStyle(fontSize: 16),
                          ),
                          Flexible(
                              child: Text(
                            '\$ 2050',
                            style: TextStyle(fontSize: 18),
                            overflow: TextOverflow.ellipsis,
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Shipping: ',
                            style: TextStyle(fontSize: 16),
                          ),
                          Flexible(
                              child: Text(
                            '\$ 2050',
                            style: TextStyle(fontSize: 18),
                            overflow: TextOverflow.ellipsis,
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'SubTotal: ',
                            style: TextStyle(fontSize: 16),
                          ),
                          Flexible(
                              child: Text(
                            '\$ 2050',
                            style: TextStyle(fontSize: 18),
                            overflow: TextOverflow.ellipsis,
                          )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                '-',
                                style: TextStyle(fontSize: 25),
                              )),
                          Text(
                            ' 1 ',
                            style: TextStyle(fontSize: 20),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                '+',
                                style: TextStyle(fontSize: 25),
                              ))
                        ],
                      )
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
