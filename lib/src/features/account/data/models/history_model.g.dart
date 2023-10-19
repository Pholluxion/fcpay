// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryImpl _$$HistoryImplFromJson(Map<String, dynamic> json) =>
    _$HistoryImpl(
      monto: (json['monto'] as num).toDouble(),
      ip: json['ip'] as String,
      fecha: json['fecha'] as String,
    );

Map<String, dynamic> _$$HistoryImplToJson(_$HistoryImpl instance) =>
    <String, dynamic>{
      'monto': instance.monto,
      'ip': instance.ip,
      'fecha': instance.fecha,
    };
