import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Image.asset(
        'assets/images/ic_app.png',
        width: 80,
        height: 40,
      ),
      // actions: [
      //   IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.user),
      //   color: Color(0xFF322332)

      //   )
      // ],
    );
  }
}
