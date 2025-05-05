import 'package:flutter/material.dart';

class MyBooksScreen extends StatelessWidget {
  const MyBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('کتاب‌های من'),
        centerTitle: true,
      ),
      body: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 32),
              Icon(Icons.menu_book, size: 100, color: Colors.grey[400]),
              const SizedBox(height: 16),
              const Text(
                'کتابی روی میز مطالعاتت نیست.',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: const Text('رفتن به فروشگاه'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
