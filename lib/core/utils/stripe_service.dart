import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/utils/api_keys.dart';
import 'package:payment/core/utils/api_service.dart';
import 'package:payment/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
    PaymentIntetInputModel paymentIntentInputModel,
  ) async {
    var response = await apiService.post(
      body: paymentIntentInputModel.toJson(),
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secretKey,
    );
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future initPaymentSheet({required String paymentIntentClintSecret}) async {
    Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClintSecret,
        merchantDisplayName: 'Omar',
      ),
    );
  }

  Future displayPaymentSheet() async {
    Stripe.instance.presentCustomerSheet();
  }

  Future makePayment({
    required PaymentIntetInputModel paymentIntetInputModel,
  }) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntetInputModel);
    await initPaymentSheet(
      paymentIntentClintSecret: paymentIntentModel.clientSecret!,
    );
    await displayPaymentSheet();
  }
}
