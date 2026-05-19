class PricingCalculator {
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTaxAmount(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Implementation for getting tax rate based on location
    return 0.10;
  }

  static double getShippingCost(String location) {
    // Implementation for getting shipping cost based on location
    return 5.00;
  }


  /*static double calculateCartTotal(CartModel cart) {
    return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + calculateTotalPrice(currentPrice ?? 0));
  }*/
}
