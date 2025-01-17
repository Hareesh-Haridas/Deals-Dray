import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpTextFieldWidget extends StatelessWidget {
  const OtpTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 4,
      borderColor: Color(0xFF512DA8),
      //set to true to show as box or false to show as dash
      showFieldAsBox: true,
      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here
      },
      //runs when every textfield is filled
      onSubmit: (String verificationCode) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Verification Code"),
                content: Text('Code entered is $verificationCode'),
              );
            });
      }, // end onSubmit
    );
  }
}
