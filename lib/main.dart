import 'package:flutter/material.dart';
import 'package:qr_code/UI/style/style.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: homeScreen(),
    );
  }
}

// ignore: camel_case_types
class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

// ignore: camel_case_types
class _homeScreenState extends State<homeScreen> {
  String data = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: QrImage(
              data: data,
              backgroundColor: Colors.white,
              version: QrVersions.auto,
              size: 300,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              onChanged: (value) {
                setState(() {
                  data = value;
                });
              },
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: 'Type the Date',
                filled: true,
                fillColor: AppStyle.textInputColor,
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          RawMaterialButton(
            onPressed: () {},
            fillColor: AppStyle.accentColor,
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(
              horizontal: 36,
              vertical: 16,
            ),
            child: const Text('Generate QR code'),
          ),
        ],
      ),
    );
  }
}
