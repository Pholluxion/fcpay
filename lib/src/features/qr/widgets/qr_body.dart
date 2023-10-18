import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrBody extends StatefulWidget {
  const QrBody({super.key});

  @override
  State<QrBody> createState() => _QrBodyState();
}

class _QrBodyState extends State<QrBody> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    if (defaultTargetPlatform == TargetPlatform.android) {
      controller!.pauseCamera();
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey,
              overlay: QrScannerOverlayShape(borderColor: Colors.white70),
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
          // Center(
          //   child: (result != null)
          //       ? Text(
          //           'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
          //       : const Text('Scan a code'),
          // ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
