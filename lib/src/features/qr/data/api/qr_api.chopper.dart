// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$QRService extends QRService {
  _$QRService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = QRService;

  @override
  Future<Response<dynamic>> genQR(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/generateqr');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> forms(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/forms');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
