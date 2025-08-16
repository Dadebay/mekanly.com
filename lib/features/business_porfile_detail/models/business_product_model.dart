class BusinessProductModel {
  final List<ProductBusinessProfile>? data;

  BusinessProductModel({this.data});

  factory BusinessProductModel.fromJson(Map<String, dynamic> json) =>
      BusinessProductModel(
        data: json['data'] == null
            ? null
            : (json['data'] as List)
                .map((e) =>
                    ProductBusinessProfile.fromJson(e as Map<String, dynamic>))
                .toList(),
      );

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
      };
}

class ProductBusinessProfile {
  final int? id;
  final String? name;
  final int? commentCount;
  final int? price;
  final String? status;
  final bool? favorited;
  final String? expire;
  final String? phone;
  final dynamic who;
  final int? delivery;
  final int? comment;
  final String? description;
  final dynamic loverPercentage;
  final dynamic loverPrice;
  final bool? vip;
  final bool? luxeStatus; // NEW FIELD
  final int? exclusive;
  final dynamic hashtag;
  final List<ProductImageBusiness>? images;
  final String? createdAt;
  final User? user;
  final int? userId;
  final String? userName;
  final dynamic userPhone;
  final int? locationId;
  final String? locationName;
  final LocationParent? locationParent;
  final int? categoryId;
  final String? categoryTitle;
  final String? categoryParent;
  final Shop? shop;
  final int? shopId;
  final String? shopBrand;
  final String? shopLogo;
  final String? type;
  final dynamic reason;

  ProductBusinessProfile({
    this.id,
    this.name,
    this.commentCount,
    this.price,
    this.status,
    this.favorited,
    this.expire,
    this.phone,
    this.who,
    this.delivery,
    this.comment,
    this.description,
    this.loverPercentage,
    this.loverPrice,
    this.vip,
    this.exclusive,
    this.hashtag,
    this.images,
    this.createdAt,
    this.user,
    this.userId,
    this.userName,
    this.userPhone,
    this.locationId,
    this.locationName,
    this.locationParent,
    this.categoryId,
    this.categoryTitle,
    this.categoryParent,
    this.shop,
    this.shopId,
    this.shopBrand,
    this.shopLogo,
    this.type,
    this.reason,
    this.luxeStatus,
  });

  static int? _parseInt(dynamic value) {
    if (value == null) return null;
    if (value is int) return value;
    if (value is String) return int.tryParse(value);
    return null;
  }

  factory ProductBusinessProfile.fromJson(Map<String, dynamic> json) =>
      ProductBusinessProfile(
        id: ProductBusinessProfile._parseInt(json['id']),
        name: json['name']?.toString(),
        commentCount: ProductBusinessProfile._parseInt(json['comment_count']),
        price: ProductBusinessProfile._parseInt(json['price']),
        status: json['status']?.toString(),
        favorited: json['favorited'] as bool?,
        expire: json['expire']?.toString(),
        phone: json['phone']?.toString(),
        who: json['who'],
        delivery: ProductBusinessProfile._parseInt(json['delivery']),
        comment: ProductBusinessProfile._parseInt(json['comment']),
        description: json['description']?.toString(),
        loverPercentage: json['lover_percentage'],
        loverPrice: json['lover_price'],
        vip: json['vip_status'] is bool
            ? json['vip_status'] as bool?
            : json['vip_status'] is int
                ? (json['vip_status'] as int) == 1
                : json['vip_status'] is String
                    ? (json['vip_status'] as String).toLowerCase() == 'true' ||
                        (json['vip_status'] as String) == '1'
                    : false, // Default to false if it's not a recognized boolean, int, or string representation
        luxeStatus: json['luxe_status'] is bool
            ? json['luxe_status'] as bool?
            : json['luxe_status'] is int
                ? (json['luxe_status'] as int) == 1
                : json['luxe_status'] is String
                    ? (json['luxe_status'] as String).toLowerCase() == 'true' ||
                        (json['luxe_status'] as String) == '1'
                    : false, // Default to false if it's not a recognized boolean, int, or string representation

        hashtag: json['hashtag'],
        images: json['images'] == null
            ? null
            : (json['images'] as List)
                .map((e) =>
                    ProductImageBusiness.fromJson(e as Map<String, dynamic>))
                .toList(),
        createdAt: json['created_at']?.toString(),
        user: json['user'] == null
            ? null
            : User.fromJson(json['user'] as Map<String, dynamic>),
        userId: ProductBusinessProfile._parseInt(json['user_id']),
        userName: json['user_name']?.toString(),
        userPhone: json['user_phone'],
        locationId: ProductBusinessProfile._parseInt(json['location_id']),
        locationName: json['location_name']?.toString(),
        locationParent: json['location_parent'] == null
            ? null
            : LocationParent.fromJson(
                json['location_parent'] as Map<String, dynamic>),
        categoryId: ProductBusinessProfile._parseInt(json['category_id']),
        categoryTitle: json['category_title']?.toString(),
        categoryParent: json['category_parent']?.toString(),
        shop: json['shop'] == null
            ? null
            : Shop.fromJson(json['shop'] as Map<String, dynamic>),
        shopId: ProductBusinessProfile._parseInt(json['shop_id']),
        shopBrand: json['shop_brand']?.toString(),
        shopLogo: json['shop_logo']?.toString(),
        type: json['type']?.toString(),
        reason: json['reason'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'comment_count': commentCount,
        'price': price,
        'status': status,
        'favorited': favorited,
        'expire': expire,
        'phone': phone,
        'who': who,
        'delivery': delivery,
        'comment': comment,
        'description': description,
        'lover_percentage': loverPercentage,
        'lover_price': loverPrice,
        'vip': vip,
        'exclusive': exclusive,
        'hashtag': hashtag,
        'images': images?.map((e) => e.toJson()).toList(),
        'created_at': createdAt,
        'user': user?.toJson(),
        'user_id': userId,
        'user_name': userName,
        'user_phone': userPhone,
        'location_id': locationId,
        'location_name': locationName,
        'location_parent': locationParent?.toJson(),
        'category_id': categoryId,
        'category_title': categoryTitle,
        'category_parent': categoryParent,
        'shop': shop?.toJson(),
        'shop_id': shopId,
        'shop_brand': shopBrand,
        'shop_logo': shopLogo,
        'type': type,
        'reason': reason,
      };
}

class ProductImageBusiness {
  final int? id;
  final String? url;
  final String? original;
  final String? thumbnail;
  final String? watermark;

  ProductImageBusiness({
    this.id,
    this.url,
    this.original,
    this.thumbnail,
    this.watermark,
  });

  factory ProductImageBusiness.fromJson(Map<String, dynamic> json) =>
      ProductImageBusiness(
        id: ProductBusinessProfile._parseInt(json['id']),
        url: json['url']?.toString(),
        original: json['original']?.toString(),
        thumbnail: json['thumbnail']?.toString(),
        watermark: json['watermark']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'url': url,
        'original': original,
        'thumbnail': thumbnail,
        'watermark': watermark,
      };
}

class User {
  final int? id;
  final String? username;

  User({
    this.id,
    this.username,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: ProductBusinessProfile._parseInt(json['id']),
        username: json['username']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
      };
}

class LocationParent {
  final int? id;
  final dynamic parentId;
  final String? name;
  final String? createdAt;
  final String? updatedAt;
  final dynamic parentName;

  LocationParent({
    this.id,
    this.parentId,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.parentName,
  });

  factory LocationParent.fromJson(Map<String, dynamic> json) => LocationParent(
        id: ProductBusinessProfile._parseInt(json['id']),
        parentId: json['parent_id'],
        name: json['name']?.toString(),
        createdAt: json['created_at']?.toString(),
        updatedAt: json['updated_at']?.toString(),
        parentName: json['parent_name'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_id': parentId,
        'name': name,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'parent_name': parentName,
      };
}

class Shop {
  final int? id;
  final String? brand;
  final String? logo;
  final String? image;
  final String? description;
  final String? briefDescription;
  final int? views;
  final String? coverMedia;
  final List<String>? phoneNumbers;
  final bool? vipStatus;
  final String? site;
  final String? mail;
  final List<SocialProfile>? socialProfiles;
  final List<String>? location;
  final int? productCount;
  final List<ProductCategory>? productCategories;
  final String? createdAt;

  Shop({
    this.id,
    this.brand,
    this.logo,
    this.image,
    this.description,
    this.briefDescription,
    this.views,
    this.coverMedia,
    this.phoneNumbers,
    this.vipStatus,
    this.site,
    this.mail,
    this.socialProfiles,
    this.location,
    this.productCount,
    this.productCategories,
    this.createdAt,
  });

  factory Shop.fromJson(Map<String, dynamic> json) => Shop(
        id: ProductBusinessProfile._parseInt(json['id']),
        brand: json['brand']?.toString(),
        logo: json['logo']?.toString(),
        image: json['image']?.toString(),
        description: json['description']?.toString(),
        briefDescription: json['brief_description']?.toString(),
        views: ProductBusinessProfile._parseInt(json['views']),
        coverMedia: json['cover_media']?.toString(),
        phoneNumbers: json['phone_numbers'] == null
            ? null
            : (json['phone_numbers'] as List<dynamic>)
                .map((e) => e?.toString() ?? '')
                .toList(),
        vipStatus: json['vip_status'] as bool?,
        site: json['site']?.toString(),
        mail: json['mail']?.toString(),
        socialProfiles: json['social_profiles'] == null
            ? null
            : (json['social_profiles'] as List<dynamic>)
                .map((e) => SocialProfile.fromJson(e as Map<String, dynamic>))
                .toList(),
        location: json['location'] == null
            ? null
            : (json['location'] as List<dynamic>)
                .map((e) => e?.toString() ?? '')
                .toList(),
        productCount: ProductBusinessProfile._parseInt(json['product_count']),
        productCategories: json['product_categories'] == null
            ? null
            : (json['product_categories'] as List<dynamic>)
                .map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
                .toList(),
        createdAt: json['created_at']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'brand': brand,
        'logo': logo,
        'image': image,
        'description': description,
        'brief_description': briefDescription,
        'views': views,
        'cover_media': coverMedia,
        'phone_numbers': phoneNumbers,
        'vip_status': vipStatus,
        'site': site,
        'mail': mail,
        'social_profiles': socialProfiles?.map((e) => e.toJson()).toList(),
        'location': location,
        'product_count': productCount,
        'product_categories':
            productCategories?.map((e) => e.toJson()).toList(),
        'created_at': createdAt,
      };
}

class SocialProfile {
  final int? sociableId;
  final String? platform;
  final String? url;

  SocialProfile({
    this.sociableId,
    this.platform,
    this.url,
  });

  factory SocialProfile.fromJson(Map<String, dynamic> json) => SocialProfile(
        sociableId: ProductBusinessProfile._parseInt(json['sociable_id']),
        platform: json['platform']?.toString(),
        url: json['url']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        'sociable_id': sociableId,
        'platform': platform,
        'url': url,
      };
}

class ProductCategory {
  final int? id;
  final String? title;
  final String? image;
  final ProductCategoryParent? parent;
  final String? description;
  final int? productsCount;

  ProductCategory({
    this.id,
    this.title,
    this.image,
    this.parent,
    this.description,
    this.productsCount,
  });

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      ProductCategory(
        id: ProductBusinessProfile._parseInt(json['id']),
        title: json['title']?.toString(),
        image: json['image']?.toString(),
        parent: json['parent'] == null
            ? null
            : ProductCategoryParent.fromJson(
                json['parent'] as Map<String, dynamic>),
        description: json['description']?.toString(),
        productsCount: ProductBusinessProfile._parseInt(json['products_count']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'image': image,
        'parent': parent?.toJson(),
        'description': description,
        'products_count': productsCount,
      };
}

class ProductCategoryParent {
  final int? id;
  final String? title;
  final String? image;
  final dynamic parent;
  final dynamic description;

  ProductCategoryParent({
    this.id,
    this.title,
    this.image,
    this.parent,
    this.description,
  });

  factory ProductCategoryParent.fromJson(Map<String, dynamic> json) =>
      ProductCategoryParent(
        id: ProductBusinessProfile._parseInt(json['id']),
        title: json['title']?.toString(),
        image: json['image']?.toString(),
        parent: json['parent'],
        description: json['description'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'image': image,
        'parent': parent,
        'description': description,
      };
}
