import 'package:flutter/material.dart';
import 'home_page.dart';
import 'read_nfc_page.dart';

void main() {
  runApp(NfcManagerApp());
}

class NfcManagerApp extends StatefulWidget {
  @override
  _NfcManagerAppState createState() => _NfcManagerAppState();
}

class _NfcManagerAppState extends State<NfcManagerApp> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [HomePage(), ReadNfcPage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("NFC Manager"),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/profile.png",
                ), // Add this image to your assets
              ),
            ),
          ],
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.nfc), label: "Read NFC"),
          ],
        ),
      ),
    );
  }
}
