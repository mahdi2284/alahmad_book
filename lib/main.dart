import 'package:alahmad_book/views/spalsh/spalsh_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'IRANYekanMobile'
      ),
      debugShowCheckedModeBanner: false,
      title: 'Al-Ahmad Book',
      locale: Locale('fa'),
      supportedLocales: [
        Locale('fa','')
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: SpalshScreen(),
    );
  }
}