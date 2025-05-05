import 'package:alahmad_book/data/models/book_model.dart';
import 'package:alahmad_book/views/book_details/book_detail_screen.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  final List<Book> sampleBooks = [
    Book(
      id: '1',
      title: 'کتابخانه نیمه‌شب',
      author: 'مت هیگ',
      coverUrl: 'assets/images/sample_book.jpg',
      description: 'داستانی درباره انتخاب‌های زندگی...',
      price: 32000,
      rating: 4.6, // 👈 اضافه شده
    ),
    Book(
      id: '2',
      title: 'اثر مرکب',
      author: 'دارن هاردی',
      coverUrl: 'assets/images/sample_book.jpg',
      description: 'مسیر موفقیت از طریق کارهای کوچک...',
      price: 28000,
      rating: 4.2,
    ),
  ];

  StoreScreen({super.key});
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
          SizedBox(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sampleBooks.length,
              itemBuilder:
                  (context, index) => _BookCard(book: sampleBooks[index]),
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
              itemCount: sampleBooks.length,
              itemBuilder:
                  (context, index) => _BookCard(book: sampleBooks[index]),
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
              itemCount: sampleBooks.length,
              itemBuilder: (context, index) {
                return _BookCard(book: sampleBooks[index]);
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
          MaterialPageRoute(
            builder: (_) => BookDetailScreen(),
          ),
        );
      },
      child: Container(
        width: 140,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(book.coverUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    book.author,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
