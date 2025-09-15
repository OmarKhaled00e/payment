import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:payment/features/checkout/presentation/views/widgets/custom_button_bloc_consumer.dart';
import 'package:payment/features/checkout/presentation/views/widgets/payment_method_list_view.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(16),
          PaymentMethodListView(),
          Gap(32),
          CustomButtonBlocConsumer(),
        ],
      ),
    );
  }
}
