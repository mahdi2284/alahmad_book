import 'package:flutter/material.dart';

class InfinityScreen extends StatelessWidget {
  const InfinityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(onPressed: (){}, child: Text('بی نهایت')),),
    );
  }
}