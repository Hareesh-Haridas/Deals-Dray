import 'package:deals_dray/business_logic/bottom_nav/bloc/bottom_nav_bloc.dart';
import 'package:deals_dray/common_widgets/root_page.dart';
import 'package:deals_dray/screens/home_screen/home_screen.dart';
import 'package:deals_dray/screens/otp_request_screen/otp_request_screen.dart';
import 'package:deals_dray/screens/otp_verification_screen/otp_verification_screen.dart';
import 'package:deals_dray/screens/sign_up_screen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RootPage(),
      ),
    );
  }
}
