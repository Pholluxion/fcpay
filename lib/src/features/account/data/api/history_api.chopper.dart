// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$HistoryService extends HistoryService {
  _$HistoryService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = HistoryService;

  @override
  Future<Response<dynamic>> history(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/history');
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
