import 'package:aog/ios/pages/home.page.dart';
import 'package:flutter/cupertino.dart';

class IosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "Alcool ou Gasolina",
      home: HomePage(),
    );
  }
}