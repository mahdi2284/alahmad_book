import 'dart:convert';

import 'package:alahmad_book/data/models/book_model.dart';
import 'package:alahmad_book/views/book_details/book_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StoreScreen extends StatefulWidget {

  StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  List<Book> books = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadBooks();
  }


  Future<void> loadBooks() async {
    final String response = await rootBundle.loadString('assets/data/books.json');
    final List data = jsonDecode(response);
    setState(() {
      books = data.map((e) => Book.fromJson(e)).toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text('کتابخانه مجازی آل احمد'),
        //Image.network('https://alahmad-pub.ir/', height: 32),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal[100],
                foregroundColor: Colors.black,
                elevation: 0,
                shape: StadiumBorder(),
              ),
              child: const Text('دسته‌بندی'),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Image.network(
                'https://img.taaghche.com/banner/63881269004504447933.jpg?w=500',
                width: double.infinity,
                height: 230,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _ChipButton(label: 'کتاب‌های صوتی'),
                  _ChipButton(label: 'هدیه اشتراک بی‌نهایت'),
                  _ChipButton(label: 'کشف کتاب'),
                  _ChipButton(label: 'کتاب هایی که باید بخوانیم'),
                  _ChipButton(label: 'خلاصه کتاب'),
                  _ChipButton(label: 'کتاب کودک و نوجوان'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              '10 کتاب محبوب آل احمد',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SizedBox(
              height: 240,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: books.length,
                itemBuilder:
                    (context, index) => _BookCard(book: books[index]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'تازه‌های پرفروش',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text('بیشتر', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          SizedBox(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: books.length,
              itemBuilder:
                  (context, index) => _BookCard(book: books[index]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'کتب عرفانی',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text('بیشتر', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          SizedBox(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: books.length,
              itemBuilder: (context, index) {
                return _BookCard(book: books[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ChipButton extends StatelessWidget {
  final String label;
  const _ChipButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.teal,
          shape: StadiumBorder(),
          elevation: 0.5,
        ),
        child: Text(label),
      ),
    );
  }
}

class _BookCard extends StatelessWidget {
  final Book book;
  const _BookCard({required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => BookDetailScreen(book: book)),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
        ),
        child: Image.asset(book.coverUrl,fit: BoxFit.contain,),
      ),
    );
  }
}
