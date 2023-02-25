import 'package:cart_wihe_provider/provider/conrol.dart';
import 'package:cart_wihe_provider/screens/cart_screen.dart';
import 'package:cart_wihe_provider/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()=>runApp(const MainScreen());


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)=> Contol(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute:'home_screen' ,
        routes: {
          'home_screen': (context)=> const HomeScreen(),
          'cart_screen': (context)=> const CartScreen(),
        },
      ),
    );
  }
}


