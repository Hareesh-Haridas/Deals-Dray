import 'package:deals_dray/business_logic/bottom_nav/bloc/bottom_nav_bloc.dart';
import 'package:deals_dray/common_widgets/bottom_navigation.dart';
import 'package:deals_dray/screens/cart_screen/cart_screen.dart';
import 'package:deals_dray/screens/categories_screen/categories_screen.dart';
import 'package:deals_dray/screens/deals_screen/deals_screen.dart';
import 'package:deals_dray/screens/home_screen/home_screen.dart';
import 'package:deals_dray/screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNavBloc, BottomNavState>(
        builder: (context, state) {
          return IndexedStack(
            index: state.index,
            children: screens,
          );
        },
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}

List<Widget> screens = [
  const HomeScreen(),
  const CategoryScreen(),
  const DealsScreen(),
  const CartScreen(),
  const ProfileScreen()
];
