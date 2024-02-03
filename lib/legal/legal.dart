import 'package:flutter/material.dart';
import 'package:solopreneuer/legal/legal_attempt.dart';

import '../solopreneur_row.dart';

class legal extends StatefulWidget {
  @override
  legalState createState() => legalState();
}

class legalState extends State<legal> {
  String selectedText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SolopreneurRow(
            selectedText: selectedText,
            onTextTap: onTextTap,
          ),
          legal_page(),
          // Other Rows can be added similarly
        ],
      ),
    );
  }

  void onTextTap(String text) {
    setState(() {
      selectedText = text;
    });
    // Add your logic here for the onTap event
    // For example, you can navigate to a different screen or perform some action
  }
}