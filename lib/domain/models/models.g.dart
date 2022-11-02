// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Models _$ModelsFromJson(Map<String, dynamic> json) => Models(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      stocks: json['stocks'] as int?,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$ModelsToJson(Models instance) => <String, dynamic>{
      
      'name': instance.name,
      'price': instance.price,
      'stocks': instance.stocks,
      'photo':instance.photo
      
    };
