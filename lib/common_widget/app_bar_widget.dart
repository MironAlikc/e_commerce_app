import 'package:e_commerce_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Image.asset(
        'assets/images/logo_shop.png',
        width: 180,
        height: 140,
        color: eshopColor,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.user),
          color: const Color(0xFF322332),
        ),
      ],
    );
  }
}
