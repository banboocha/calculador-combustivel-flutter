import 'dart:io';

import 'package:aog/android/android.app.dart';
import 'package:aog/ios/ios.app.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  Platform.isAndroid ?  AndroidApp() : IosApp(),
);

