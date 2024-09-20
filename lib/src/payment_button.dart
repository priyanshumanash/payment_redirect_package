import 'package:flutter/material.dart';
import 'payment_screen.dart';

class PaymentButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final TextStyle? textStyle;

  const PaymentButton({
    Key? key,
    this.buttonText = "Proceed to Payment",
    this.buttonColor = Colors.blue,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Navigate to the Payment Screen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PaymentScreen(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor, // Background color
      ),
      child: Text(
        buttonText,
        style: textStyle ?? TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
