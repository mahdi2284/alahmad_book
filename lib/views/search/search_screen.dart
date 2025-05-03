import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  final List<Map<String, dynamic>> categories = [
    {'icon': Icons.headset, 'title': 'همه کتاب های صوتی'},
    {'icon': Icons.card_giftcard, 'title': 'کتاب‌های رایگان'},
    {'icon': Icons.edit, 'title': 'ادبیات'},
    {'icon': Icons.account_balance, 'title': 'تاریخ'},
    {'icon': Icons.menu_book, 'title': 'داستان و رمان'},
    {'icon': Icons.school, 'title': 'درسی و کمک‌درسی'},
    {'icon': Icons.security, 'title': 'دفاع مقدس'},
    {'icon': Icons.psychology, 'title': 'روان‌شناسی و موفقیت'},
    {'icon': Icons.language, 'title': 'زبان خارجی'},
    {'icon': Icons.edit_note, 'title': 'زندگی‌نامه و خاطرات'},
    {'icon': Icons.favorite, 'title': 'سبک زندگی'},
    {'icon': Icons.public, 'title': 'علوم انسانی'},
  ];

   

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('جستجو', style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'نام کتاب ،نویسنده،مترجم،ناشر و ....',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none
                )
              ),
            ),
          ),
          Expanded(child: ListView.separated(
            itemCount: categories.length,
            separatorBuilder: (_, __) => Divider(height: 1),
            itemBuilder: (context,index){
              final category = categories[index];
              return ListTile(
                leading: Icon(category['icon']),
                title: Text(category['title']),
                trailing: Icon(Icons.chevron_left),
                onTap: (){},
              );
            },
          ))
        ],
      ),
    );
  }
}
