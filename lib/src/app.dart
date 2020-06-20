import 'package:flutter/cupertino.dart';
import 'views/home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
          title: 'Cupertino App',
          home: Home(),
        );
      }
}