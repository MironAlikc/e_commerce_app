import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PopularMenu extends StatelessWidget {
  const PopularMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: 55,
                height: 55,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF2F3F7),
                ),
                child: RawMaterialButton(
                  onPressed: () {},
                  shape: const CircleBorder(),
                  child: const Icon(
                    Icons.account_balance,
                    color: Color(0xFFAB434B),
                  ),
                ),
              ),
              const Text(
                'Popular',
                style: TextStyle(
                  color: Color(0xFF969696),
                  fontFamily: 'Roboto-Light',
                  fontSize: 13,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 55,
                height: 55,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF2F3F7),
                ),
                child: RawMaterialButton(
                  onPressed: () {},
                  shape: const CircleBorder(),
                  child: const Icon(
                    FontAwesomeIcons.clock,
                    // Icons.account_balance,
                    color: Color(0xFFC1A17C),
                  ),
                ),
              ),
              const Text(
                'Flash Sell',
                style: TextStyle(
                  color: Color(0xFF969696),
                  fontFamily: 'Roboto-Light',
                  fontSize: 13,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 55,
                height: 55,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF2F3F7),
                ),
                child: RawMaterialButton(
                  onPressed: () {},
                  shape: const CircleBorder(),
                  child: const Icon(
                    FontAwesomeIcons.truck,
                    //Icons.account_balance,
                    color: Color(0xFF5EB699),
                  ),
                ),
              ),
              const Text(
                'Evaly Store',
                style: TextStyle(
                  color: Color(0xFF969696),
                  fontFamily: 'Roboto-Light',
                  fontSize: 13,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 55,
                height: 55,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF2F3F7),
                ),
                child: RawMaterialButton(
                  onPressed: () {},
                  shape: const CircleBorder(),
                  child: const Icon(
                    FontAwesomeIcons.truck,
                    //Icons.account_balance,
                    color: Color(0xFF4D9DA7),
                  ),
                ),
              ),
              const Text(
                'voucher',
                style: TextStyle(
                  color: Color(0xFF969696),
                  fontFamily: 'Roboto-Light',
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
