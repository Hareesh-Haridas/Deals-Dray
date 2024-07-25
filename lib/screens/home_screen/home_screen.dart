import 'package:carousel_slider/carousel_slider.dart';
import 'package:deals_dray/constansts/const.dart';
import 'package:deals_dray/screens/cart_screen/cart_screen.dart';
import 'package:deals_dray/screens/categories_screen/categories_screen.dart';
import 'package:deals_dray/screens/deals_screen/deals_screen.dart';
import 'package:deals_dray/screens/home_screen/widgets/app_bar.dart';
import 'package:deals_dray/screens/home_screen/widgets/banner_images.dart';
import 'package:deals_dray/screens/home_screen/widgets/category_list.dart';
import 'package:deals_dray/screens/home_screen/widgets/kyc_banner.dart';
import 'package:deals_dray/screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppbarElements(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const BannerImages(),
              const SizedBox(height: 20),
              const KycBanner(),
              const CategoryList(),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.blue),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "EXCLUSIVE FOR YOU",
                            style: TextStyle(color: kWhite, fontSize: 20),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward,
                                color: kWhite,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 130,
        child: FloatingActionButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          backgroundColor: Colors.red[800],
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.chat_bubble_outline,
                color: kWhite,
              ),
              SizedBox(width: 9),
              Text(
                "Chat",
                style: TextStyle(
                    color: kWhite, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
