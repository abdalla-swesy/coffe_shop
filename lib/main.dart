import 'package:coffe_shop/logic/cubit.dart';
import 'package:coffe_shop/presentation/login.dart';
import 'package:coffe_shop/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final savedTheme = prefs.getBool("isDark") ?? false;

  runApp(
    BlocProvider(
      create: (_) => ThemeCubit()..emit(savedTheme),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, bool>(
      builder: (context, isDark) {
        return AnimatedTheme(
          data: isDark ? darkmode : lightmode,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          child: Builder(
            builder: (context) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: Theme.of(
                  context,
                ),
                home: Login(),
              );
            },
          ),
        );
      },
    );
  }
}
