import 'package:flutter/material.dart';
import 'pages/yandex_map_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Map',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/home_page',
      routes: {
        '/home_page':(context) => const HomePointsPage(),
        '/yandex_map_page':(context) => const YandexMapPage()
      },
    );
  }
}