import 'package:deals_dray/business_logic/bottom_nav/bloc/bottom_nav_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined), label: "Categories"),
        BottomNavigationBarItem(icon: Icon(Icons.done_all), label: "Deals"),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined), label: "Profile")
      ],
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      onTap: (value) {
        context.read<BottomNavBloc>().add(IndexChangerEvent(index: value));
      },
    );
  }
}
