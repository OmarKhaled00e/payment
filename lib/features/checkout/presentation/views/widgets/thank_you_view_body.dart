import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/widgets/custom_check_icon.dart';
import 'package:payment/features/checkout/presentation/views/widgets/custom_dashed_line.dart';
import 'package:payment/features/checkout/presentation/views/widgets/thank_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ThankYouCard(),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            left: 20 + 8,
            right: 20 + 8,
            child: CustomDashedLine(),
          ),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * 2,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          Positioned(
            right: -50,
            bottom: MediaQuery.sizeOf(context).height * 2,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: -20,
            child: CustomCheckIcon(),
          ),
        ],
      ),
    );
  }
}


