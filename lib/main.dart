import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'constants/screen_path.dart';

void main() {
  if (kIsWeb || (!kIsWeb && !Platform.isAndroid)) {
    runApp(DevicePreview(builder: (context) => MyApp()));
  } else {
    runApp(MyApp());
  }
  }



