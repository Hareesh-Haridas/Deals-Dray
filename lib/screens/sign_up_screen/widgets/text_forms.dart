import 'package:flutter/material.dart';

class TextForms extends StatefulWidget {
  const TextForms({super.key});

  @override
  State<TextForms> createState() => _TextFormsState();
}

class _TextFormsState extends State<TextForms> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(hintText: 'Your Email'),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Create Password',
                suffixIcon: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.remove_red_eye))),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration:
                const InputDecoration(hintText: 'Refferal Code (Optional)'),
          )
        ],
      ),
    );
  }
}
