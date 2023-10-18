// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$AccountsService extends AccountsService {
  _$AccountsService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AccountsService;

  @override
  Future<Response<dynamic>> accounts(Map<String, String> body) {
    final Uri $url = Uri.parse('/accounts');
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
