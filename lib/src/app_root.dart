import 'package:app6/screen/contacts_screen.dart';
import 'package:app6/screen/extracted_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContactsScreen(),
    );
  }
}
