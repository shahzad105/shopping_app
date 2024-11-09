import 'package:flutter/material.dart';
import 'package:ecommerce_app/screens/container_bottom_model.dart';
import 'package:ecommerce_app/screens/shipping_address_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int _type = 1;

  void _handleRadio(int? value) {
    setState(() {
      _type = value!;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Method'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            // Wrap the entire column with SingleChildScrollView
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 40),
                  PaymentOption(
                    value: 1,
                    groupValue: _type,
                    onChanged: _handleRadio,
                    label: "Amazon Pay",
                    imageAsset: "images/Amazon-pay.png",
                  ),
                  SizedBox(height: 20),
                  PaymentOption(
                    value: 2,
                    groupValue: _type,
                    onChanged: _handleRadio,
                    label: "Credit Card",
                    imageAsset: "images/visapay.png",
                  ),
                  SizedBox(height: 20),
                  PaymentOption(
                    value: 3,
                    groupValue: _type,
                    onChanged: _handleRadio,
                    label: "Google Pay",
                    imageAsset: "images/googlepay.png",
                  ),
                  SizedBox(height: 20),
                  PaymentOption(
                    value: 4,
                    groupValue: _type,
                    onChanged: _handleRadio,
                    label: "Paypal",
                    imageAsset: "images/paypal.png",
                  ),
                  SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub total',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                      Text(
                        '\$300.50',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipping Fee',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                      Text(
                        '\$15.50',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )
                    ],
                  ),
                  Divider(height: 30, color: Colors.black),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Payment',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      Text(
                        '\$315',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFDB3022)),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShippingAddress()));
                    },
                    child: ContainerBottomModel(
                      itext: "Confirm Payment",
                      containerWidth: size.width * 0.9,
                      bgColor: Color(0xFFDB3022),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PaymentOption extends StatelessWidget {
  final int value;
  final int groupValue;
  final ValueChanged<int?> onChanged;
  final String label;
  final String imageAsset;

  const PaymentOption({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.label,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = value == groupValue;
    return Container(
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
        border: Border.all(
          width: isSelected ? 1 : 0.3,
          color: isSelected ? Color(0xFFDB3022) : Colors.grey,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Radio<int>(
                  value: value,
                  groupValue: groupValue,
                  onChanged: onChanged,
                  activeColor: Color(0xFFDB3022),
                ),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: isSelected ? Colors.black : Colors.grey,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                imageAsset,
                width: 60,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
