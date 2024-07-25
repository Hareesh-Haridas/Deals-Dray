import 'package:deals_dray/screens/home_screen/home_screen.dart';
import 'package:deals_dray/screens/otp_request_screen/otp_request_screen.dart';
import 'package:deals_dray/screens/otp_verification_screen/otp_verification_screen.dart';
import 'package:deals_dray/screens/sign_up_screen/sign_up_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
