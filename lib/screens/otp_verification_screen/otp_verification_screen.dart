import 'package:deals_dray/constansts/const.dart';
import 'package:deals_dray/screens/otp_verification_screen/widgets/otp_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 120;
  void onEnd() {
    print('Timer ended');
    // Handle what happens when the timer ends here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_sharp),
              )
            ],
          ),
          const SizedBox(
            height: 180,
          ),
          const Row(
            children: [
              Text(
                "OTP Verification",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Text(
                  "We have sent a unique OTP number\n to your mobile +91-7890364789"),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          OtpTextFieldWidget(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CountdownTimer(
                endTime: endTime,
                widgetBuilder: (_, time) {
                  if (time == null) {
                    return const Text("Time is Up");
                  }
                  return Text(
                    'Time left: ${time.min ?? 0}:${(time.sec ?? 0).toString().padLeft(2, '0')}',
                    style: const TextStyle(fontSize: 16, color: Colors.red),
                  );
                },
                onEnd: onEnd,
              ),
              TextButton(onPressed: () {}, child: const Text("SEND AGAIN"))
            ],
          )
        ],
      ),
    );
  }
}
