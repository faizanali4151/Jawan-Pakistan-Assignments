import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'whatsapp_ui_view.dart'; // Import your UI file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() => isDarkMode = !isDarkMode);
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
          home: WhatsAppUiView(
            isDarkMode: isDarkMode,
            onToggleTheme: toggleTheme,
          ),
        );
      },
    );
  }
}
