import 'package:flutter/material.dart';
import 'package:grocery_app/providers/favorite_provider.dart';
import 'package:grocery_app/screens/splash_screen.dart';
import 'package:provider/provider.dart';

import 'providers/cart_provider.dart';

void main() {
 runApp(
    
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen());
  }
}
