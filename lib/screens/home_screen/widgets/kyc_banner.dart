import 'package:flutter/material.dart';

class KycBanner extends StatelessWidget {
  const KycBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 180,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 130, 161, 249), Colors.indigo[400]!],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'KYC Pending\n You need to provide the required\n documents for your account activation.')
          ],
        ),
      ),
    );
  }
}
