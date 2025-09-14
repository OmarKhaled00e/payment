import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:gap/gap.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/features/checkout/presentation/views/widgets/card_info_widget.dart';
import 'package:payment/features/checkout/presentation/views/widgets/payment_item_info.dart';
import 'package:payment/features/checkout/presentation/views/widgets/total_price.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Color(0xffEDEDED),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 66, left: 22, right: 22),
        child: Column(
          children: [
            Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            Text('Your transaction was successful', style: Styles.style20),
            Gap(42),
            PaymentItemInfo(title: 'Date', value: '01/24/2023'),
            Gap(20),
            PaymentItemInfo(title: 'Time', value: '10:15 AM'),
            Gap(20),
            PaymentItemInfo(title: 'To', value: 'Sam Louis'),
            Divider(thickness: 2, height: 60),
            TotalPrice(title: 'Total', value: r'$50.97'),
            Gap(30),
            CardInfoWidget(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(FontAwesomeIcons.barcode, size: 64),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.50, color: Color(0xff34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'PAID',
                    textAlign: TextAlign.center,
                    style: Styles.style24.copyWith(color: Color(0xFF34A853)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * .2 + 20) / 2) - 29,
            ),
          ],
        ),
      ),
    );
  }
}
