import 'package:flutter/material.dart';
import 'package:flutter_shopui1/model/cart_model.dart';
import 'package:flutter_shopui1/pages/intro_page.dart';
import 'package:flutter_shopui1/pages/onboarding.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnBoardingScreen(),
      ),
    );
  }
}
