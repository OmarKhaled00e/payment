class PaymentIntetInputModel {
  final String amount;
  final String currency;

  PaymentIntetInputModel({required this.amount, required this.currency});

  toJson() {
    return {'amount': amount, 'currency': currency,};
  }
}
