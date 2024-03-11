import 'package:flutter/material.dart';

class GridTitle extends StatelessWidget {
  const GridTitle({
    super.key,
    required this.name,
    required this.imageUrl,
  });
  final String name;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Center(
        child: Column(
          children: [
            Image.network(
              imageUrl,
              width: 100,
              height: 100,
            ),
            Text(
              name,
              style: const TextStyle(
                color: Color(0xFF000000),
                fontFamily: 'Roboto-Light',
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
