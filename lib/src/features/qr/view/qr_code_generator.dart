// qr_view_screen.dart
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRViewScreen extends StatelessWidget {
  final String data;

  QRViewScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR generation'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: QrImageView(
          data: data,
          version: QrVersions.auto,
          size: 200.0,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
