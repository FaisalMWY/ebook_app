import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Popular Now..',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        MaterialButton(
          onPressed: () {},
          child: const Text(
            'View All',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
