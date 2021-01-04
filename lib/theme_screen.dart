import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testy/theme_provider.dart';

class ThemeScreen extends StatefulWidget {
  @override
  _ThemeScreenState createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Switch(
              value: themeProvider.getBool(),
              onChanged: (val) {
                setState(
                  () {
                    themeProvider.setBool(val);
                  },
                );
              },
              activeColor: Colors.red,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              themeProvider.getBool() ? 'DARK THEME' : 'LIGHT THEME',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
