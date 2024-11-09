import 'package:ecommerce_app/screens/container_bottom_model.dart';
import 'package:ecommerce_app/screens/navigation_screen.dart';
import 'package:flutter/material.dart';

class Ordersuccesss extends StatelessWidget {
  const Ordersuccesss({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                'images/success.png',
                height: 250,
              ),
              SizedBox(height: 20),
              Text(
                "Success",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                "Your Order will be delivered soon!",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
              Text(
                "Thank You for choosing our app",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NavigationScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ContainerBottomModel(
                itext: "Continue Shopping",
                bgColor: Color(0xFFDB3022),
                containerWidth: MediaQuery.of(context).size.width,
              ),
            ),
          )
        ],
      ),
    );
  }
}
