import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class BookDetailScreen extends StatefulWidget {
  const BookDetailScreen({super.key});

  @override
  State<BookDetailScreen> createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(blurRadius: 18,offset: Offset(10, 6)),
                      ]
                    ),
                    child: Image.asset(
                      'assets/images/sample_book.jpg',
                      height: 270,
                    ),
                  ),
                ),
              ),
              Text(
                'تاملاتی در فلسفه فلسفه اسلامی',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'علامه طباطبایی',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Icon(Icons.arrow_right),
                    Text(
                      'سید یدالله یزدان پناه',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Icon(Icons.arrow_right),
                    Text(
                      'بیشتر',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.save, size: 30),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.wallet_giftcard, size: 30),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.share),
                            iconSize: 30,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/epub.png',
                          height: 30,
                          width: 30,
                        ),
                        Container(
                          height: 26,
                          width: 1,
                          color: Colors.grey[300],
                          margin: EdgeInsets.symmetric(horizontal: 12),
                        ),
                        Column(
                          children: [
                            StarRating(
                              rating: 3.5,
                              filledIcon: Icons.star,
                              halfFilledIcon: Icons.star_border,
                              emptyIcon: Icons.star_border_outlined,
                              color:
                                  Colors
                                      .black, // Color for filled and half-filled icons
                              borderColor: Colors.grey, // Color for empty icons
                            ),
                            Text('از549 نظر', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  elevation: 0,
                  minimumSize: Size(350, 50),
                ),
                onPressed: () {},
                child: Text(
                  "خرید",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.teal),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        child: Text(
                          'مطالعه نمونه',
                          style: TextStyle(fontSize: 20, color: Colors.teal),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Icon(
                                Icons.store,
                                color: Colors.deepOrange,
                              ),
                            ),
                            Text(
                              'خرید از بی نهایت',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Divider(thickness: 1),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'در یک نگاه',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: SizedBox(
                    child: Text(
                      'دانش فلسفه با دسته ای از پرسش ها در باب حقیقت خود رو به روست که امروزه از آن با عنوان «فلسفۀ فلسفه» یاد می کنند. از آنجا که فلسفۀ اسلامی، به ویژه حکمت متعالیه، در بستر عقلانی ویژه ای بالیده است، مباحث و دل مشغولی های روشی و معرفت شناختی خاص خود را دارد.',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 126, 125, 125),
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Divider(thickness: 1),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'درباره کتاب',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: SizedBox(
                    child: Text(
                      'دانش فلسفه با دسته ای از پرسش ها در باب حقیقت خود رو به روست که امروزه از آن با عنوان «فلسفۀ فلسفه» یاد می کنند. از آنجا که فلسفۀ اسلامی، به ویژه حکمت متعالیه، در بستر عقلانی ویژه ای بالیده است، مباحث و دل مشغولی های روشی و معرفت شناختی خاص خود را دارد.',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 126, 125, 125),
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Divider(thickness: 1),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SortFecher(
                        category: 'دسته بندی',
                        category_name: 'فلسفه و  عرفان',
                      ),
                      Container(
                        height: 60,
                        width: 1,
                        color: Colors.grey[300],
                        margin: EdgeInsets.symmetric(horizontal: 12),
                      ),
                      SortFecher(
                        category: 'قیمت نسخه چاپی',
                        category_name: '360000 تومان',
                      ),
                      Container(
                        height: 60,
                        width: 1,
                        color: Colors.grey[300],
                        margin: EdgeInsets.symmetric(horizontal: 12),
                      ),
                      SortFecher(
                        category: 'ناشر',
                        category_name: 'انتشارات آل احمد',
                      ),
                      Container(
                        height: 60,
                        width: 1,
                        color: Colors.grey[300],
                        margin: EdgeInsets.symmetric(horizontal: 12),
                      ),
                      SortFecher(
                        category: 'حجم',
                        category_name: '200 کیلوبایت',
                      ),
                      Container(
                        height: 60,
                        width: 1,
                        color: Colors.grey[300],
                        margin: EdgeInsets.symmetric(horizontal: 12),
                      ),
                      SortFecher(
                        category: 'تعداد صفحات',
                        category_name: '200 صفحه',
                      ),
                      Container(
                        height: 60,
                        width: 1,
                        color: Colors.grey[300],
                        margin: EdgeInsets.symmetric(horizontal: 12),
                      ),
                      SortFecher(
                        category: ' سال انتشار',
                        category_name: ' 1403',
                      ),
                      Container(
                        height: 60,
                        width: 1,
                        color: Colors.grey[300],
                        margin: EdgeInsets.symmetric(horizontal: 12),
                      ),
                      SortFecher(
                        category: 'شابک',
                        category_name: '۹۷۸-۶۰۰-۵۸۵۰-۴۰-۶',
                      ),
                      Container(
                        height: 60,
                        width: 1,
                        color: Colors.grey[300],
                        margin: EdgeInsets.symmetric(horizontal: 12),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: Divider(thickness: 1),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'نظرات کاربران',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(blurRadius: 15,offset: Offset(4, 6),)
                    ],
                    color:  const Color.fromARGB(255, 212, 212, 212),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/avatar.png',scale: 10,),
                      Column(
                        children: [
                          Text('هری پاتر'),
                          StarRating(
                              rating: 3.5,
                              filledIcon: Icons.star,
                              halfFilledIcon: Icons.star_border,
                              emptyIcon: Icons.star_border_outlined,
                              color:
                                  Colors
                                      .black, // Color for filled and half-filled icons
                              borderColor: Colors.grey, // Color for empty icons
                            ),
                        ],
                      )
                    ],

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SortFecher extends StatelessWidget {
  const SortFecher({
    super.key,
    required this.category,
    required this.category_name,
  });
  final String category;
  final String category_name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(category, style: TextStyle(fontSize: 15)),
        SizedBox(height: 5),
        Text(
          category_name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        SizedBox(height: 5),
        SingleChildScrollView(
          child: Row(children: [Text('یک دسته دیگر'), Icon(Icons.arrow_right)]),
        ),
      ],
    );
  }
}
