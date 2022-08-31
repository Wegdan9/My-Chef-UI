import 'package:flutter/material.dart';
import 'package:mychef/models/nav_item.dart';
import 'package:provider/provider.dart';
import './screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavItems(),
      child: MaterialApp(
        title: 'My Chef',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0
          ),
          //backgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.blue,
        ),
        home:  HomeScreen(),
      ),
    );
  }
}

