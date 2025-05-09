import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:alahmad_book/data/models/book_model.dart';


class BookDetailScreen extends StatefulWidget {
  

  final Book book;

  const BookDetailScreen({super.key, required this.book});
  @override
  State<BookDetailScreen> createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _showAppBar = false;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.offset > 100 && !_showAppBar) {
        setState(() {
          _showAppBar = true;
        });
      } else if (_scrollController.offset <= 100 && _showAppBar) {
        setState(() {
          _showAppBar = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(blurRadius: 18, offset: Offset(10, 6)),
                          ],
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
                                  borderColor:
                                      Colors.grey, // Color for empty icons
                                ),
                                Text(
                                  'از549 نظر',
                                  style: TextStyle(fontSize: 16),
                                ),
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
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.teal),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 10,
                              ),
                              child: Center(
                                child: Text(
                                  'مطالعه نمونه',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.teal,
                                  ),
                                ),
                              ),
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 300, child: CommentCard()),
                        SizedBox(width: 300, child: CommentCard()),
                        SizedBox(width: 300, child: CommentCard()),
                        SizedBox(width: 300, child: CommentCard()),
                      ],
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
                        'بریده هایی از کتاب',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 300, child: ClippingBook()),
                        SizedBox(width: 300, child: ClippingBook()),
                      ],
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
                        'نوشتن نظر',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 2,
                          margin: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 16,
                          ),
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  RatingBar.builder(
                                    itemSize: 20,
                                    initialRating: 5,
                                    direction: Axis.horizontal,
                                    minRating: 1,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemBuilder:
                                        (context, index) => Icon(
                                          Icons.star,
                                          color: Colors.teal,
                                        ),
                                    onRatingUpdate: (value) {},
                                  ),
                                  SizedBox(height: 10,),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('نوشتن نظر'),
                                    style: ButtonStyle(
                                      side: WidgetStatePropertyAll(BorderSide(color: Colors.teal)),
                                      elevation: WidgetStatePropertyAll(0),
                                      foregroundColor: WidgetStatePropertyAll(Colors.teal)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            top: _showAppBar ? 0 : -80,
            left: 0,
            right: 0,
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 300),
              opacity: _showAppBar ? 1 : 0,
              child: Container(
                height: 80,
                padding: EdgeInsets.only(top: 20),
                color: Colors.white,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'تاملاتی در فلسفه فلسفه اسلامی',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        elevation: WidgetStatePropertyAll(0),
                        backgroundColor: WidgetStatePropertyAll(Colors.teal),
                      ),
                      child: Text(
                        '350.000 تومان',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClippingBook extends StatelessWidget {
  const ClippingBook({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final cardWidth = screenWidth * 0.9;
    final cardHeight = screenHeight * 0.3;

    return SizedBox(
      width: cardWidth,
      height: cardHeight,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // کارت با متن وسط
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 2,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Container(
                height: 500, // ارتفاع مشخص برای قرار گرفتن در مرکز
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'هر کتاب شانس امتحان کردن یکی از زندگی‌هایی رو بهت می‌ده که می‌تونستی تجربه‌شون کنی',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'رادیو سکوت (:',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // دکمه دایره‌ای پایین
            Positioned(
              bottom: 0,
              child: ClipOval(
                child: Container(
                  width: 60,
                  height: 60,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      'ر',
                      style: TextStyle(fontSize: 32, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CommentCard extends StatelessWidget {
  const CommentCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = screenWidth * 0.9; // کارت ۹۰٪ عرض صفحه

    return SizedBox(
      width: cardWidth,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/avatar.png'),
                      radius: 30,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('هری پاتر'),
                          Row(
                            children: [
                              RatingBar.builder(
                                itemSize: 20,
                                initialRating: 5,
                                direction: Axis.horizontal,
                                minRating: 1,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemBuilder:
                                    (context, index) =>
                                        Icon(Icons.star, color: Colors.black),
                                onRatingUpdate: (value) {},
                              ),
                              SizedBox(width: 10),
                              Text('1400/01/20'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.check_circle, color: Colors.teal),
                              SizedBox(width: 10),
                              Text(
                                'توصیه می کنم',
                                style: TextStyle(color: Colors.teal),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                  right: 20,
                  bottom: 10,
                ),
                child: Text(
                  'سلام می خوام با شما در مورد این کتاب صحبت کنم ، لطفا برای دقایقی با من همراه شوید ....',
                ),
              ),
              Row(
                children: [
                  TextButton.icon(
                    style: ButtonStyle(
                      iconColor: WidgetStatePropertyAll(Colors.grey),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.thumb_up),
                    label: Text(
                      'مفید بود',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  TextButton.icon(
                    style: ButtonStyle(
                      iconColor: WidgetStatePropertyAll(Colors.grey),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.thumb_down),
                    label: Text(
                      'مفید نبود',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
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
