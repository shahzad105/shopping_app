import 'package:ecommerce_app/screens/recovery_screen.dart';
import 'package:flutter/material.dart';
// import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController textEditingController = TextEditingController();

  // BoxDecoration get _pinPutDecoration {
  //   return BoxDecoration(
  //     border: Border.all(color: Theme.of(context).primaryColor),
  //     borderRadius: BorderRadius.circular(15.0),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Enter OTP",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 80),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Enter the OTP we have sent you to your account.',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(height: 30),
              // TextFieldPin(
              //   textController: textEditingController,
              //   autoFocus: true, // Optional: Change to true for auto-focus
              //   codeLength: 4,
              //   alignment: MainAxisAlignment.center,
              //   defaultBoxSize: 55.0,
              //   margin: 10,
              //   selectedBoxSize: 50.0,
              //   textStyle: const TextStyle(fontSize: 16),
              //   defaultDecoration: _pinPutDecoration.copyWith(
              //     border: Border.all(color: Colors.grey),
              //   ),
              //   selectedDecoration: _pinPutDecoration,
              //   onChange: (code) {
              //     setState(() {}); // Trigger state update
              //     // Optionally, validate when code length is complete
              //     if (code.length == 4) {
              //       print("OTP code entered: $code");
              //       // Trigger any further actions or validations
              //     }
              //   },
              // ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RecoveryScreen()),
                  );
                },
                child: Text(
                  'Verify',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(55),
                  backgroundColor: Color(0xFFFDB3022),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
}
