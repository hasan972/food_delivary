import 'package:flutter/material.dart';
import 'package:food_delivary/controllers/popular_product_controller.dart';
import 'package:food_delivary/pages/food/popular_food_detail.dart';
import 'package:food_delivary/pages/food/recommended_food_detail.dart';
//import 'package:food_delivary/home/main_food_page.dart';
import 'package:food_delivary/splash_screen.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      title: 'Food Delivary App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primarySwatch: Colors.blue
      ),
     // home:const MainFoodPage(),
    home: const SplashScreen(),
   // home: const PopularFoodDetail(),
   // home: const RecommenedFoodDetail(),
    );
  }
}

