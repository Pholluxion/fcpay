// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QRResponseImpl _$$QRResponseImplFromJson(Map<String, dynamic> json) =>
    _$QRResponseImpl(
      message: json['message'] as String?,
      error: json['error'] as String?,
      codigo_id: json['codigo_id'] as String?,
    );

Map<String, dynamic> _$$QRResponseImplToJson(_$QRResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'codigo_id': instance.codigo_id,
    };
