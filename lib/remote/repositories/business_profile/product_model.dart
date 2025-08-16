class Product {
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: int.tryParse(json['id'].toString()) ?? 0,
      name: json['name']?.toString() ?? '',
      description: json['description']?.toString() ?? '',
      price: double.tryParse(json['price']?.toString() ?? ''),
      status: json['status']?.toString() ?? 'pending',
      favorited: json['favorite'] == true,
      expire: json['expire']?.toString(),
      phone: json['phone']?.toString(),
      who: json['who']?.toString(),
      delivery: double.tryParse(json['delivery']?.toString() ?? '0'),
      comment: int.tryParse(json['comment']?.toString() ?? '0'),
      loverPercentage:
          double.tryParse(json['lover_percentage']?.toString() ?? '0'),
      loverPrice: double.tryParse(json['lover_price']?.toString() ?? '0'),
      vip: json['vip'] == true,
      exclusive: int.tryParse(json['exclusive']?.toString() ?? '0'),
      hashtag: json['hashtag']?.toString(),
      images: (json['images'] as List?)
              ?.map((img) => ProductImage.fromJson(img as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(
          json['created_at']?.toString() ?? DateTime.now().toString()),
      userId: int.tryParse(json['user_id']?.toString() ?? '0') ?? 0,
      userName: json['user_name']?.toString() ?? '',
      userPhone: json['user_phone']?.toString() ?? '',
      locationId: int.tryParse(json['location_id']?.toString() ?? '0') ?? 0,
      locationName: json['location_name']?.toString() ?? '',
      shop: (json['shop'] is Map<String, dynamic>)
          ? Shop.fromJson(json['shop'] as Map<String, dynamic>)
          : null,
    );
  }

  Product({
    required this.id,
    required this.name,
    required this.description,
    this.price,
    required this.status,
    required this.favorited,
    this.expire,
    this.phone,
    this.who,
    this.delivery,
    this.comment,
    this.loverPercentage,
    this.loverPrice,
    this.vip,
    this.exclusive,
    this.hashtag,
    required this.images,
    required this.createdAt,
    required this.userId,
    required this.userName,
    required this.userPhone,
    required this.locationId,
    required this.locationName,
    this.shop,
  });
  final int id;
  final String name;
  final String description;
  final double? price;
  final String status;
  final bool favorited;
  final String? expire;
  final String? phone;
  final String? who;
  final double? delivery;
  final int? comment;
  final double? loverPercentage;
  final double? loverPrice;
  final bool? vip;
  final int? exclusive;
  final String? hashtag;
  final List<ProductImage> images;
  final DateTime createdAt;
  final int userId;
  final String userName;
  final String userPhone;
  final int locationId;
  final String locationName;

  final Shop? shop;

  Product copyWith({
    int? id,
    String? name,
    String? description,
    double? price,
    String? status,
    bool? favorited,
    String? expire,
    String? phone,
    String? who,
    double? delivery,
    int? comment,
    double? loverPercentage,
    double? loverPrice,
    bool? vip,
    int? exclusive,
    String? hashtag,
    List<ProductImage>? images,
    DateTime? createdAt,
    int? userId,
    String? userName,
    String? userPhone,
    int? locationId,
    String? locationName,
    Shop? shop,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      status: status ?? this.status,
      favorited: favorited ?? this.favorited,
      expire: expire ?? this.expire,
      phone: phone ?? this.phone,
      who: who ?? this.who,
      delivery: delivery ?? this.delivery,
      comment: comment ?? this.comment,
      loverPercentage: loverPercentage ?? this.loverPercentage,
      loverPrice: loverPrice ?? this.loverPrice,
      vip: vip ?? this.vip,
      exclusive: exclusive ?? this.exclusive,
      hashtag: hashtag ?? this.hashtag,
      images: images ?? this.images,
      createdAt: createdAt ?? this.createdAt,
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      userPhone: userPhone ?? this.userPhone,
      locationId: locationId ?? this.locationId,
      locationName: locationName ?? this.locationName,
      shop: shop ?? this.shop,
    );
  }
}


class ProductImage {

  ProductImage({
    required this.id,
    required this.path,
    required this.original,
    required this.thumbnail,
    required this.watermark,
  });

  factory ProductImage.fromJson(Map<String, dynamic> json) {
    return ProductImage(
      id: int.tryParse(json['id']?.toString() ?? '0') ?? 0,
      path: json['path']?.toString() ?? '',
      original: json['original']?.toString() ?? '',
      thumbnail: json['thumbnail']?.toString() ?? '',
      watermark: json['watermark']?.toString() ?? '',
    );
  }
  final int id;
  final String path;
  final String original;
  final String thumbnail;
  final String watermark;
}

class ProductCategory {

  ProductCategory({
    required this.id,
    required this.title,
    required this.parent,
  });

  factory ProductCategory.fromJson(Map<String, dynamic> json) {
    return ProductCategory(
      id: int.tryParse(json['id']?.toString() ?? '0') ?? 0,
      title: json['title']?.toString() ?? '',
      parent: json['parent']?.toString() ??
          json['category_parent']?.toString() ??
          '',
    );
  }
  final int id;
  final String title;
  final String parent;
}

class Shop {

  Shop({
    required this.id,
    required this.brand,
    this.logo,
    this.image,
    this.description,
    this.briefDescription,
    required this.views,
    this.coverMedia,
    required this.phoneNumbers,
    required this.vipStatus,
    this.site,
    this.mail,
    required this.socialProfiles,
    required this.location,
    required this.productCount,
  });

  factory Shop.fromJson(Map<String, dynamic> json) {
    return Shop(
      id: int.tryParse(json['id']?.toString() ?? '0') ?? 0,
      brand: json['brand']?.toString() ?? '',
      logo: json['logo']?.toString(),
      image: json['image']?.toString(),
      description: json['description']?.toString(),
      briefDescription: json['brief_description']?.toString(),
      views: int.tryParse(json['views']?.toString() ?? '0') ?? 0,
      coverMedia: json['cover_media']?.toString(),
      phoneNumbers:
          (json['phone_numbers'] as List?)?.map((e) => e.toString()).toList() ??
              [],
      vipStatus: json['vip_status'] == true,
      site: json['site']?.toString(),
      mail: json['mail']?.toString(),
      socialProfiles: (json['social_profiles'] as List?)
              ?.map((e) => SocialProfile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      location:
          (json['location'] as List?)?.map((e) => e.toString()).toList() ?? [],
      productCount: int.tryParse(json['product_count']?.toString() ?? '0') ?? 0,
    );
  }
  final int id;
  final String brand;
  final String? logo;
  final String? image;
  final String? description;
  final String? briefDescription;
  final int views;
  final String? coverMedia;
  final List<String> phoneNumbers;
  final bool vipStatus;
  final String? site;
  final String? mail;
  final List<SocialProfile> socialProfiles;
  final List<String> location;
  final int productCount;
}

class SocialProfile {

  SocialProfile({
    required this.sociableId,
    required this.platform,
    required this.url,
  });

  factory SocialProfile.fromJson(Map<String, dynamic> json) {
    return SocialProfile(
      sociableId: int.tryParse(json['sociable_id']?.toString() ?? '0') ?? 0,
      platform: json['platform']?.toString() ?? '',
      url: json['url']?.toString() ?? '',
    );
  }
  final int sociableId;
  final String platform;
  final String url;
}

class ApiResponse {

  ApiResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      status: json['status'] == true,
      message: json['message']?.toString() ?? '',
      data: (json['data'] as List?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }
  final bool status;
  final String message;
  final List<Product> data;
}