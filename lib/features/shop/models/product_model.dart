class Product {
  String id;
  List<String> categoryIds;
  String productName;
  String description;
  int sellingPrice;
  int truePrice;
  int discount;
  int quantity;
  String status;
  String dimension;
  Merchant merchant;
  Images images;
  bool isSelected;
  int qty;

  Product({
    required this.id,
    required this.categoryIds,
    required this.productName,
    required this.description,
    required this.sellingPrice,
    required this.truePrice,
    required this.discount,
    required this.quantity,
    required this.status,
    required this.dimension,
    required this.merchant,
    required this.images,
    this.isSelected = false,
    this.qty = 0,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['_id'],
      categoryIds: List<String>.from(json['category-id']),
      productName: json['name'],
      description: json['description'] ?? '',
      sellingPrice: json['selling-price'],
      truePrice: json['true-price'],
      discount: json['discount'],
      quantity: json['quantity'],
      status: json['status'],
      dimension: json['dimensions'] ?? '',
      merchant: Merchant.fromJson(
          json['merchant-id']), // Handle this if merchant details are available
      images: Images.fromJson(json['images']),
      isSelected: false,
      qty: 0,
    );
  }
}

class Images {
  String thumbnail;
  List<String> normalImages;

  Images({
    required this.thumbnail,
    required this.normalImages,
  });

  factory Images.fromJson(Map<String, dynamic> json) {
    return Images(
      thumbnail: json['thumbnail'],
      normalImages: List<String>.from(json['normal-images']),
    );
  }
}

class Merchant {
  String merchantId;

  Merchant({
    required this.merchantId,
  });

  factory Merchant.fromJson(String merchantId) {
    return Merchant(merchantId: merchantId);
  }
}

class Category {
  String categoryId;
  String categoryName;

  Category({
    required this.categoryId,
    required this.categoryName,
  });
}
