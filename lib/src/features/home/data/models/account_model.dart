import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_model.freezed.dart';

part 'account_model.g.dart';

@freezed
class Account with _$Account {
  const factory Account({
    // ignore: non_constant_identifier_names
    required String numero_cuenta,
    required double saldo,
    required String tipo,
    // ignore: non_constant_identifier_names
    required int account_id,
  }) = _Account;

  factory Account.fromJson(Map<String, Object?> json) =>
      _$AccountFromJson(json);
}
