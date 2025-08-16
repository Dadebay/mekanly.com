// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_profile_detail_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessProfileDetailProductsResponseImpl
    _$$BusinessProfileDetailProductsResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$BusinessProfileDetailProductsResponseImpl(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => ProductData.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BusinessProfileDetailProductsResponseImplToJson(
        _$BusinessProfileDetailProductsResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ProductDataImpl _$$ProductDataImplFromJson(Map<String, dynamic> json) =>
    _$ProductDataImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      commentCount: (json['comment_count'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      status: json['status'] as String?,
      favorited: json['favorited'] as bool?,
      expire: json['expire'] as String?,
      phone: json['phone'] as String?,
      who: json['who'] as String?,
      delivery: (json['delivery'] as num?)?.toInt(),
      comment: (json['comment'] as num?)?.toInt(),
      description: json['description'] as String?,
      loverPercentage: (json['lover_percentage'] as num?)?.toInt(),
      loverPrice: json['lover_price'] as String?,
      vip: json['vip'] as String?,
      exclusive: (json['exclusive'] as num?)?.toInt(),
      hashtag: json['hashtag'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      userName: json['user_name'] as String?,
      userPhone: json['user_phone'] as String?,
      locationId: (json['location_id'] as num?)?.toInt(),
      locationName: json['location_name'] as String?,
      locationParent: json['location_parent'] == null
          ? null
          : LocationParent.fromJson(
              json['location_parent'] as Map<String, dynamic>),
      categoryId: (json['category_id'] as num?)?.toInt(),
      categoryTitle: json['category_title'] as String?,
      categoryParent: json['category_parent'] as String?,
      shop: json['shop'] == null
          ? null
          : Shop.fromJson(json['shop'] as Map<String, dynamic>),
      shopId: (json['shop_id'] as num?)?.toInt(),
      shopBrand: json['shop_brand'] as String?,
      shopLogo: json['shop_logo'] as String?,
      type: json['type'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$ProductDataImplToJson(_$ProductDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'comment_count': instance.commentCount,
      'price': instance.price,
      'status': instance.status,
      'favorited': instance.favorited,
      'expire': instance.expire,
      'phone': instance.phone,
      'who': instance.who,
      'delivery': instance.delivery,
      'comment': instance.comment,
      'description': instance.description,
      'lover_percentage': instance.loverPercentage,
      'lover_price': instance.loverPrice,
      'vip': instance.vip,
      'exclusive': instance.exclusive,
      'hashtag': instance.hashtag,
      'images': instance.images,
      'created_at': instance.createdAt,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'user_phone': instance.userPhone,
      'location_id': instance.locationId,
      'location_name': instance.locationName,
      'location_parent': instance.locationParent,
      'category_id': instance.categoryId,
      'category_title': instance.categoryTitle,
      'category_parent': instance.categoryParent,
      'shop': instance.shop,
      'shop_id': instance.shopId,
      'shop_brand': instance.shopBrand,
      'shop_logo': instance.shopLogo,
      'type': instance.type,
      'reason': instance.reason,
    };

_$ProductImageImpl _$$ProductImageImplFromJson(Map<String, dynamic> json) =>
    _$ProductImageImpl(
      id: (json['id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      path: json['path'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$ProductImageImplToJson(_$ProductImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'path': instance.path,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$LocationParentImpl _$$LocationParentImplFromJson(Map<String, dynamic> json) =>
    _$LocationParentImpl(
      id: (json['id'] as num?)?.toInt(),
      parentId: (json['parent_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      parentName: json['parent_name'] as String?,
    );

Map<String, dynamic> _$$LocationParentImplToJson(
        _$LocationParentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'parent_name': instance.parentName,
    };

_$ShopImpl _$$ShopImplFromJson(Map<String, dynamic> json) => _$ShopImpl(
      id: (json['id'] as num?)?.toInt(),
      brand: json['brand'] as String?,
      logo: json['logo'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      briefDescription: json['brief_description'] as String?,
      views: (json['views'] as num?)?.toInt(),
      coverMedia: json['cover_media'] as String?,
      phoneNumbers: json['phone_numbers'] as String?,
      vipStatus: json['vip_status'] as bool?,
      site: json['site'] as String?,
      mail: json['mail'] as String?,
      socialProfiles: (json['social_profiles'] as List<dynamic>?)
          ?.map((e) => SocialProfile.fromJson(e as Map<String, dynamic>))
          .toList(),
      location: json['location'] as List<dynamic>?,
      productCount: (json['product_count'] as num?)?.toInt(),
      productCategories: (json['product_categories'] as List<dynamic>?)
          ?.map((e) => BusinessProfileDetailProductCategory.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShopImplToJson(_$ShopImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'logo': instance.logo,
      'image': instance.image,
      'description': instance.description,
      'brief_description': instance.briefDescription,
      'views': instance.views,
      'cover_media': instance.coverMedia,
      'phone_numbers': instance.phoneNumbers,
      'vip_status': instance.vipStatus,
      'site': instance.site,
      'mail': instance.mail,
      'social_profiles': instance.socialProfiles,
      'location': instance.location,
      'product_count': instance.productCount,
      'product_categories': instance.productCategories,
    };

_$SocialProfileImpl _$$SocialProfileImplFromJson(Map<String, dynamic> json) =>
    _$SocialProfileImpl(
      sociableId: (json['sociable_id'] as num?)?.toInt(),
      platform: json['platform'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$SocialProfileImplToJson(_$SocialProfileImpl instance) =>
    <String, dynamic>{
      'sociable_id': instance.sociableId,
      'platform': instance.platform,
      'url': instance.url,
    };

_$BusinessProfileDetailProductCategoryImpl
    _$$BusinessProfileDetailProductCategoryImplFromJson(
            Map<String, dynamic> json) =>
        _$BusinessProfileDetailProductCategoryImpl(
          id: (json['id'] as num?)?.toInt(),
          title: json['title'] as String?,
          image: json['image'] as String?,
          parent: json['parent'] == null
              ? null
              : BusinessProfileDetailProductCategoryParent.fromJson(
                  json['parent'] as Map<String, dynamic>),
          description: json['description'] as String?,
          productsCount: (json['products_count'] as num?)?.toInt(),
          type: json['type'] as String?,
          parentId: (json['parent_id'] as num?)?.toInt(),
          name: json['name'] as String?,
          createdAt: json['created_at'] as String?,
          updatedAt: json['updated_at'] as String?,
        );

Map<String, dynamic> _$$BusinessProfileDetailProductCategoryImplToJson(
        _$BusinessProfileDetailProductCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'parent': instance.parent,
      'description': instance.description,
      'products_count': instance.productsCount,
      'type': instance.type,
      'parent_id': instance.parentId,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$BusinessProfileDetailProductCategoryParentImpl
    _$$BusinessProfileDetailProductCategoryParentImplFromJson(
            Map<String, dynamic> json) =>
        _$BusinessProfileDetailProductCategoryParentImpl(
          id: (json['id'] as num?)?.toInt(),
          title: json['title'] as String?,
          image: json['image'] as String?,
          parent: json['parent'] == null
              ? null
              : BusinessProfileDetailProductCategoryParent.fromJson(
                  json['parent'] as Map<String, dynamic>),
          description: json['description'] as String?,
        );

Map<String, dynamic> _$$BusinessProfileDetailProductCategoryParentImplToJson(
        _$BusinessProfileDetailProductCategoryParentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'parent': instance.parent,
      'description': instance.description,
    };
