class InitPaymentSheetInputModel {
  final String clientSecret;
  final String customerId;
  final String ephemeralKeySceret;

  InitPaymentSheetInputModel({
    required this.clientSecret,
    required this.customerId,
    required this.ephemeralKeySceret,
  });
}
