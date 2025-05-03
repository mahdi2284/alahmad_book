import 'package:alahmad_book/views/profile/webview_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30),
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.teal,
                child: Icon(Icons.book, size: 40, color: Colors.white),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                child: Text('ورود', style: TextStyle(fontSize: 16)),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'حساب کاربری نداری؟ ثبت نام',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Divider(thickness: 1),
              Expanded(
                child: ListView(
                  children: [
                    _ProfileTile(title: 'رویش', icon: Icons.local_activity),
                    Divider(thickness: 1,),
                    _ProfileTile(
                      title: 'واحد پرداخت',
                      icon: Icons.attach_money,
                    ),
                    _ProfileTile(
                      title: 'بروزرسانی',
                      icon: Icons.system_security_update,
                    ),
                    _ProfileTile(title: 'کتابگردی', icon: Icons.local_cafe),
                    _ProfileTile(title: 'پشتیبانی', icon: Icons.phone),
                    _ProfileTile(
                      title: 'سایت آل احمد',
                      icon: Icons.article,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => BlogWebViewScreen(),
                          ),
                        );
                      },
                    ),
                    _ProfileTile(title: 'درباره ما', icon: Icons.info_outline),
                    SwitchListTile(
                      title: Text(
                        'در حالت مطالعه',
                        style: TextStyle(color: Colors.black),
                      ),
                      value: true,
                      onChanged: null,
                    ),
                    _ProfileTile(
                      title: 'ظاهر برنامه',
                      icon: Icons.format_paint,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 16),
                        Icon(Icons.share),
                        SizedBox(width: 16),
                        Icon(Icons.camera_alt),
                        SizedBox(width: 16),
                        Icon(Icons.telegram),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;
  const _ProfileTile({required this.title, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: Icon(Icons.chevron_left),
      onTap: onTap,
    );
  }
}
