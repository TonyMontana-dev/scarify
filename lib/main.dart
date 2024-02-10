import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scarify/models/playlist_provider.dart';
import 'package:scarify/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'pages/homepage.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => PlaylistProvider(),)
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    ); // MaterialApp
  }
}