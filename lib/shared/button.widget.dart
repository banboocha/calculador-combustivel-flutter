import 'dart:io' show Platform;
import 'package:aog/android/widgets/android-button.widget.dart';
import 'package:aog/ios/widget/ios-button.widget.dart';
import 'package:flutter/widgets.dart';

class Button extends StatelessWidget {
  Function func;
  var text = "Text";

  Button({
    @required this.func,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? AndroidButton(
            text: text,
            func: func,
          )
        : IosButton(
            text: text,
            func: func,
          );
  }
}
