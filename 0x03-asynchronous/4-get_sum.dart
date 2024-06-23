import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Fetch user data
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = json.decode(userData);
    String userId = userMap['id'];

    // Fetch user orders
    String userOrdersData = await fetchUserOrders(userId);
    List<dynamic> userOrders = json.decode(userOrdersData);

    // Initialize total price
    double totalPrice = 0.0;

    // Fetch and sum product prices
    for (String product in userOrders) {
      String productPriceData = await fetchProductPrice(product);
      double productPrice = json.decode(productPriceData);
      totalPrice += productPrice;
    }

    return totalPrice;
  } catch (error) {
    return -1;
  }
}

void main() async {
  print(await calculateTotal());
}
