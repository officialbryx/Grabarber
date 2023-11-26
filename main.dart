import 'package:flutter/material.dart';
import 'BPending.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barber App',
      theme: ThemeData(
        primarySwatch: Color(0xff000000),
      ),
      home: HistoryTab(),
    );
  }
}

// Ensure you have appropriate imports for BPending.dart and BReview.dart
// import 'BPending.dart';
// import 'BReview.dart';
