import 'package:flutter/material.dart';
import 'package:otp_pin_input/src/otp_view.dart';

void main() {
  runApp(const OTPPinInput());
}

class OTPPinInput extends StatelessWidget {
  const OTPPinInput({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OTPView(),
    );
  }
}

