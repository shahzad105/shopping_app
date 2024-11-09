import 'package:ecommerce_app/screens/container_bottom_model.dart';
import 'package:ecommerce_app/screens/payment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  List imageList = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.jpg",
  ];
  List productTitles = [
    "Warm Zipper",
    "Knitted Wool",
    "Zipper Wind",
    "Child Wind"
  ];
  List prices = ["\$320", "\$600", "\$50", "\$120"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: BackButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                  child: ListView.builder(
                itemCount: imageList.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                            splashRadius: 20,
                            activeColor: Color(0xFFFDB3022),
                            value: true,
                            onChanged: (val) {}),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            imageList[index],
                            fit: BoxFit.cover,
                            height: 80,
                            width: 80,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productTitles[index],
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Hooded Jacket"),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              prices[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFFFDB3022),
                                  fontSize: 18),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.minus,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(CupertinoIcons.plus, color: Colors.red)
                          ],
                        )
                      ],
                    ),
                  );
                },
              )),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Select All",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Checkbox(
                      value: false,
                      splashRadius: 20,
                      activeColor: Color(0xFFFDB3022),
                      onChanged: (val) {})
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 20,
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$400.50",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFDB3022)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentScreen()));
                },
                child: ContainerBottomModel(
                  itext: "Checkout",
                  containerWidth: MediaQuery.of(context).size.width,
                  bgColor: Color(0xFFDB3022),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
