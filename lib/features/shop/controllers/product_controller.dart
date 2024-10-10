import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:interior_coffee/features/shop/models/product_model.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var products = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  Future<void> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse(
          'https://interior-coffee-api-f2d9dqd2eyccesfq.southeastasia-01.azurewebsites.net/api/v1/products'));

      if (response.statusCode == 200) {
        // Parse the API response body
        Map<String, dynamic> data = json.decode(response.body);

        // Extract the "products" list from the response
        List<dynamic> productList = data['products'];

        // Map each item in the list to a Product object
        products.value =
            productList.map((item) => Product.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false;
    }
  }
}
