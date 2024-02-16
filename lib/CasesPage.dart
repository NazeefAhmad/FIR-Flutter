import 'package:flutter/material.dart';

class CasesPage extends StatefulWidget {
  @override
  _CasesPageState createState() => _CasesPageState();
}

class _CasesPageState extends State<CasesPage> {
  @override
  Widget build(BuildContext context) {
    // Implement your Firebase data fetching logic here
    return Scaffold(
      appBar: AppBar(
        title: Text('Cases'),
      ),
      body: Center(
        child: Text('Data from Firebase'),
      ),
    );
  }
}
