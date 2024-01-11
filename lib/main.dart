import 'package:flutter/material.dart';
import 'package:theme_play/home_page.dart';
import 'package:theme_play/theme/play_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final brightness = MediaQuery.of(context).platformBrightness;
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: const Color(0xFFEBEBEB),
        useMaterial3: true,
        extensions: <ThemeExtension<dynamic>>[
          // supply a list of extensions if needed
          PlayThemeData.light(),
          // PlayTextTheme.fallback(),
        ],
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: const Color(0xFF252627),
        useMaterial3: true,
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.purple)),
        extensions: <ThemeExtension<dynamic>>[
          // supply a list of extensions if needed
          PlayThemeData.dark(),
          // PlayTextTheme.fallback(),
        ],
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
