import 'package:asset_generation/constants/string_constants.dart';
import 'package:asset_generation/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  // List of dash image paths
  List<String> dashImagePaths = [
    Assets.dash.path,
    Assets.dash1.path,
    Assets.dash2.path,
    Assets.dash3.path,
    Assets.dash4.path,
  ];
  // Index to track the current dash image
  int currentDashImageIndex = 0;

  // Function to change the dash image
  void changeDashImage() {
    setState(() {
      // Increment the index to get the next dash image
      currentDashImageIndex = (currentDashImageIndex + 1) % dashImagePaths.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          changeDashImage();
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: const Text(
          StringConstants.appbarText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child:
            // Image.asset('assets/dash.png'),
            // Image.asset(Constants.dashImage),
            Image.asset(dashImagePaths[currentDashImageIndex]),
      ),
    );
  }
}
