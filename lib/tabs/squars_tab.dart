
import 'package:flutter/material.dart';

class Squares_tab extends StatelessWidget {
  const Squares_tab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.green,
        body: Center(child: ImageIcon(AssetImage("assets/grid-01.png")))
    );
  }
}
