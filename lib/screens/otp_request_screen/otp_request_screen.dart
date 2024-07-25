import 'package:deals_dray/common_widgets/arrow_back_icon.dart';
import 'package:deals_dray/constansts/const.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class OtpRequestScreen extends StatefulWidget {
  const OtpRequestScreen({super.key});

  @override
  State<OtpRequestScreen> createState() => _OtpRequestScreenState();
}

class _OtpRequestScreenState extends State<OtpRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Row(
              children: [
                ArrowBackIcon(),
              ],
            ),
            SizedBox(
              height: 120,
            ),
            ToggleSwitch(
              minWidth: 90.0,
              cornerRadius: 20.0,
              activeBgColors: [
                [Colors.red[800]!],
                [Colors.red[800]!]
              ],
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              initialLabelIndex: 1,
              totalSwitches: 2,
              labels: const ['Phone', 'Email'],
              radiusStyle: true,
              onToggle: (index) {
                print('switched to: $index');
              },
            ),
            SizedBox(
              height: 30,
            ),
            Text("Glad to see you!"),
            SizedBox(
              height: 30,
            ),
            Text("Please provide your phone number"),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(hintText: 'Phone'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              color: Colors.red[800],
              height: 60,
              minWidth: 280,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
              child: Text(
                'SEND CODE',
                style: TextStyle(color: kWhite),
              ),
            )
          ],
        ),
      )),
    );
  }
}
