import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_app_bar.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      
    );
  }
}