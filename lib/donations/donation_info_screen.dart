import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DonationInfo extends StatelessWidget {
  const DonationInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Card(
          child: Column(
            children: [
              rowElement("BANK", "Bank Of India"),
              rowElement("BRANCH", "PED"),
              rowElement("ACCOUNT NUMBER", "160420110000121"),
              rowElement("IFSC", "BKID0001604"),
            ],
          ),
        ),
      ),
    );
  }

  rowElement(String title,String value){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(title),
        Text(value)
      ],
    );
  }
}