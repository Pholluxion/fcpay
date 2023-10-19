// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormImpl _$$FormImplFromJson(Map<String, dynamic> json) => _$FormImpl(
      form_id: json['form_id'] as int,
      num_campos: json['num_campos'] as int,
      nombre: json['nombre'] as String,
    );

Map<String, dynamic> _$$FormImplToJson(_$FormImpl instance) =>
    <String, dynamic>{
      'form_id': instance.form_id,
      'num_campos': instance.num_campos,
      'nombre': instance.nombre,
    };
