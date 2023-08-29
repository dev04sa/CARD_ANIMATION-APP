import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && (Platform.isMacOS || Platform.isLinux || Platform.isWindows)) {
    await DesktopWindow.setMinWindowSize(const Size(600, 800));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hero App',
      theme: ThemeData(
        textTheme: TextTheme(
            bodyText2: TextStyle(shadows: [
          Shadow(
            blurRadius: 10.0,
            color: Colors.black45,
            offset: Offset(1.0, 5.0),
          ),
        ])),
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
