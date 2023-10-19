import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_model.freezed.dart';

part 'history_model.g.dart';

@freezed
class History with _$History {
  const factory History({
    required double monto,
    required String ip,
    required String fecha,
  }) = _History;

  factory History.fromJson(Map<String, Object?> json) =>
      _$HistoryFromJson(json);
}
