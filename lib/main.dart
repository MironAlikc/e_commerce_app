import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/common_widget/app_bar_widget.dart';
import 'package:e_commerce_app/firebase_options.dart';
import 'package:e_commerce_app/screens/dashboard_screen.dart';
import 'package:e_commerce_app/screens/home_screen.dart';
import 'package:e_commerce_app/screens/wish_list_screen.dart';
import 'package:e_commerce_app/screens/shopping_car_screen.dart';
import 'package:e_commerce_app/utils/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDefault();
  runApp(const MyApp());
}

Future<void> initializeDefault() async {
  FirebaseApp app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true,
  );
  log('Initialaized default app $app');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: Colors.white,
        primaryColorDark: Colors.white,
        backgroundColor: Colors.white,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> viewContainer = [
    const HomeScreen(),
    const WishListScreen(),
    const ShoppingCarScreen(),
    const DashboardScreen()
  ];
  int _selectedInDex = 0;
  void _onItemTapped(int index) {
    _selectedInDex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBarWidget(),
      ),
      body: viewContainer[_selectedInDex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heart),
            label: 'Wish List',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.shoppingBag),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.dashcube),
            label: 'Dashboard',
          ),
        ],
        currentIndex: _selectedInDex,
        selectedItemColor: eshopColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
