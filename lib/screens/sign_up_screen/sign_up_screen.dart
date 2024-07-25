import 'package:deals_dray/constansts/const.dart';
import 'package:deals_dray/screens/sign_up_screen/widgets/text_forms.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: const SafeArea(
        child: Column(
          children: [
            kHeight26,
            Icon(
              Icons.arrow_back_ios_sharp,
            ),
            SizedBox(
              height: 140,
            ),
            Text(
              "Let's Begin!",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Please enter your credentials to proceed"),
            SizedBox(
              height: 30,
            ),
            TextForms()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[900],
        onPressed: () {},
        child: const Icon(
          Icons.arrow_forward,
          color: kWhite,
        ),
      ),
    );
  }
}
