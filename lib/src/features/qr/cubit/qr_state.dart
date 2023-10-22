// ignore_for_file: non_constant_identifier_names

part of 'qr_cubit.dart';

class QrState extends Equatable {
  const QrState({
    this.forms = const [],
    this.documento = 0,
    this.monto = 0,
    this.description = '',
    this.form_id = 0,
    this.qrcode = '',
    this.message = '',
  });

  final List<Form> forms;
  final int documento;
  final int monto;
  final String description;
  final int form_id;
  final String qrcode;
  final String message;

  @override
  List<Object> get props =>
      [forms, documento, monto, description, form_id, qrcode, message];

  QrState copyWith({
    List<Form>? forms,
    int? documento,
    int? monto,
    String? description,
    int? form_id,
    String? qrcode,
    String? message,
  }) {
    return QrState(
      forms: forms ?? this.forms,
      documento: documento ?? this.documento,
      monto: monto ?? this.monto,
      description: description ?? this.description,
      form_id: form_id ?? this.form_id,
      qrcode: qrcode ?? this.qrcode,
      message: message ?? this.message,
    );
  }
}
