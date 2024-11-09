import 'package:ecommerce_app/screens/cart_screen.dart';
import 'package:ecommerce_app/screens/container_bottom_model.dart';
import 'package:flutter/material.dart';

class ProductDetailsPopup extends StatelessWidget {
  final isStyle = TextStyle(
      color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 18);
  List<Color> clrs = [
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.amber,
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) => Container(
            // Use a specific height to prevent the modal from overflowing
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SingleChildScrollView(
              // Make content scrollable
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Column for "Size", "Color", "Total"
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Size",
                              style: isStyle,
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Color",
                              style: isStyle,
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Total",
                              style: isStyle,
                            ),
                          ],
                        ),
                        SizedBox(width: 30), // Add space between the columns
                        // Column for size options (S, M, L, XL)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'S',
                                  style: isStyle,
                                ),
                                SizedBox(width: 30),
                                Text(
                                  'M',
                                  style: isStyle,
                                ),
                                SizedBox(width: 30),
                                Text(
                                  'L',
                                  style: isStyle,
                                ),
                                SizedBox(width: 30),
                                Text(
                                  'XL',
                                  style: isStyle,
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            // Row for Color Picker
                            Row(
                              children: [
                                for (var i = 0; i < clrs.length; i++)
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: clrs[i],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                              ],
                            ),
                            SizedBox(height: 20),
                            // Row for Quantity Picker (-, 1, +)
                            Row(
                              children: [
                                Text(
                                  "-",
                                  style: isStyle,
                                ),
                                SizedBox(width: 30),
                                Text(
                                  "1",
                                  style: isStyle,
                                ),
                                SizedBox(width: 30),
                                Text(
                                  "+",
                                  style: isStyle,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20), // Space between size/color and price
                    // Row for the price and style text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment', style: isStyle),
                        Text(
                          "\$4000",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFFDB3022)),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 20), // Space between price and checkout button
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CartScreen()));
                      },
                      child: ContainerBottomModel(
                        itext: "Checkout",
                        bgColor: Color(0xFFDB3022),
                        containerWidth: MediaQuery.of(context).size.width -
                            60, // Reduced width to prevent overflow
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      child: ContainerBottomModel(
        containerWidth: MediaQuery.of(context).size.width / 1.5,
        itext: 'Buy Now',
        bgColor: Color(0xFFBD3022),
      ),
    );
  }
}
