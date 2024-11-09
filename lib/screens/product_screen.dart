import 'package:ecommerce_app/screens/product_details_popup.dart';
import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';

class ProductScreen extends StatelessWidget {
  // List of image paths (replace with your own paths)
  final List<String> images = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.start, // Adjusted to prevent overlapping
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 450,
                width: MediaQuery.of(context).size.width,
                child: FanCarouselImageSlider.sliderType1(
                  sliderHeight: 430,
                  imagesLink: images,
                  isAssets: true,
                  autoPlay: true,
                  showIndicator: true,
                ),
              ),
              SizedBox(
                  height: 20), // Added space between image and text section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Warm Zipper",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(height: 5), // Added some space between the texts
                      Text(
                        "Hooded Jacket",
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\$300.00',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFDB3022)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: RatingBar(
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star_border,
                  onRatingChanged: (value) => debugPrint('$value'),
                  initialRating: 3,
                  maxRating: 5,
                  size: 25,
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Cool Windy weather is a way on its way. Send him out the door in a jacket he wants to wear. Wear this Zooper Hooded Jacket.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black45,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0x1F989797),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.shopping_cart,
                        color: Color(0xFFDB3022),
                      ),
                    ),
                  ),
                  // Ensure ProductDetailsPopup is aligned properly
                  ProductDetailsPopup(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
