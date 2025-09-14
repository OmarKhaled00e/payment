import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:payment/features/checkout/presentation/views/widgets/payment_methods_bottom_sheet.dart';
import 'package:payment/features/checkout/presentation/views/widgets/total_price.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Gap(20),
          Expanded(child: Image.asset('assets/images/basket_image.png')),
          Gap(25),
          OrderInfoItem(title: 'Order Subtotal', value: r'42.97$'),
          Gap(3),
          OrderInfoItem(title: 'Discount', value: r'0$'),
          Gap(3),
          OrderInfoItem(title: 'Shipping', value: r'8$'),
          Divider(height: 34, thickness: 2, color: Color(0xffC7C7C7)),
          TotalPrice(title: 'Tatal', value: r'$50.93'),
          Gap(16),
          CustomButton(
            text: 'Complete Payment',
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return PaymentDetails();
              //     },
              //   ),
              // );
              showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                builder: (context) {
                  return PaymentMethodsBottomSheet();
                },
              );
            },
          ),
          Gap(12),
        ],
      ),
    );
  }
}

