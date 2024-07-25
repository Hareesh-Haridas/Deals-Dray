import 'package:carousel_slider/carousel_slider.dart';
import 'package:deals_dray/constansts/const.dart';
import 'package:flutter/material.dart';

class BannerImages extends StatelessWidget {
  const BannerImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images.map((e) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              '$e',
              fit: BoxFit.cover,
            ),
          ),
        );
      }).toList(),
      options: CarouselOptions(height: 170),
    );
  }
}
