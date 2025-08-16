class ProductEntity {
  final int id;
  final String name;
  final double price;
  final String description;
  final String? briefDescription;
  final List<ProductImage> images;
  final ProductUser? user;
  final ProductShop? shop;
  final ProductLocation? location;
  final ProductCategory? category;
  final String? phone;
  final String? createdAt;

  ProductEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    this.briefDescription,
    required this.images,
    this.user,
    this.shop,
    this.location,
    this.category,
    this.phone,
    this.createdAt,
  });

  factory ProductEntity.fromJson(Map<String, dynamic> json) {
    return ProductEntity(
      id: int.tryParse(json['id'].toString()) ?? 0,
      name: json['name']?.toString() ?? '',
      price: double.tryParse(json['price'].toString()) ?? 0.0,
      description: json['description']?.toString() ?? '',
      briefDescription: json['brief_description']?.toString(),
      images: (json['images'] as List<dynamic>? ?? [])
          .map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] != null
          ? ProductUser.fromJson(json['user'] as Map<String, dynamic>)
          : null,
      shop: json['shop'] != null
          ? ProductShop.fromJson(json['shop'] as Map<String, dynamic>)
          : null,
      location: json['location'] != null
          ? ProductLocation.fromJson(json['location'] as Map<String, dynamic>)
          : null,
      category: json['category'] != null
          ? ProductCategory.fromJson(json['category'] as Map<String, dynamic>)
          : null,
      phone: json['phone']?.toString(),
      createdAt: json['created_at']?.toString(),
    );
  }
}

class ProductImage {
  final int id;
  final String path;

  ProductImage({required this.id, required this.path});

  factory ProductImage.fromJson(Map<String, dynamic> json) {
    return ProductImage(
      id: int.tryParse(json['id'].toString()) ?? 0,
      path: json['path']?.toString() ?? '',
    );
  }
}

class ProductUser {
  final int id;
  final String username;

  ProductUser({required this.id, required this.username});

  factory ProductUser.fromJson(Map<String, dynamic> json) {
    return ProductUser(
      id: int.tryParse(json['id'].toString()) ?? 0,
      username: json['username']?.toString() ?? '',
    );
  }
}

class ProductShop {
  final int id;
  final String brand;
  final List<String> phoneNumbers;

  ProductShop({
    required this.id,
    required this.brand,
    required this.phoneNumbers,
  });

  factory ProductShop.fromJson(Map<String, dynamic> json) {
    return ProductShop(
      id: int.tryParse(json['id'].toString()) ?? 0,
      brand: json['brand']?.toString() ?? '',
      phoneNumbers: (json['phone_numbers'] as List<dynamic>? ?? [])
          .map((e) => e.toString())
          .toList(),
    );
  }
}

class ProductLocation {
  final int id;
  final String name;

  ProductLocation({required this.id, required this.name});

  factory ProductLocation.fromJson(Map<String, dynamic> json) {
    return ProductLocation(
      id: int.tryParse(json['id'].toString()) ?? 0,
      name: json['name']?.toString() ?? '',
    );
  }
}

class ProductCategory {
  final int id;
  final String title;

  ProductCategory({required this.id, required this.title});

  factory ProductCategory.fromJson(Map<String, dynamic> json) {
    return ProductCategory(
      id: int.tryParse(json['id'].toString()) ?? 0,
      title: json['title']?.toString() ?? '',
    );
  }
}
