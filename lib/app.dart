import 'package:e_commerce_app/features/authentication/screen/on_boarding/on_board.dart';
import 'package:e_commerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: Theming.lightTheme,
      darkTheme: Theming.darkTheme,
      home: const OnBoardScreen(),
    );
  }
}
