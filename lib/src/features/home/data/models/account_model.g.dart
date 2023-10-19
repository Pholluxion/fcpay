// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      numero_cuenta: json['numero_cuenta'] as String,
      saldo: (json['saldo'] as num).toDouble(),
      tipo: json['tipo'] as String,
      account_id: json['account_id'] as int,
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'numero_cuenta': instance.numero_cuenta,
      'saldo': instance.saldo,
      'tipo': instance.tipo,
      'account_id': instance.account_id,
    };
