import 'package:asset_generation/constants/constants.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asset Generation'),
      ),
      body: Center(
        child: Image.asset('assets/dash.png'),
      ),
    );
  }
}
