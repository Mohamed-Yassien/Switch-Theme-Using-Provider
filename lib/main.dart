import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testy/theme_provider.dart';
import 'package:testy/theme_screen.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: ThemeProvider(true),
      child: MyMaterial(),
    );
  }
}

class MyMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeProvider.getBool() ? ThemeData.dark() : ThemeData.light(),
      home: ThemeScreen(),
    );
  }
}
