import 'package:flutter/material.dart';

class ReadNfcPage extends StatelessWidget {
  const ReadNfcPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("NFC Manager")),
      body: Center(child: Text("Read Page", style: TextStyle(fontSize: 24))),
    );
  }
}
