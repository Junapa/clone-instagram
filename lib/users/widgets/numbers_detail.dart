import 'package:flutter/material.dart';
import 'package:tiktok_clone/contants/gaps.dart';
import 'package:tiktok_clone/contants/sizes.dart';

class NumbersDetail extends StatelessWidget {
  final String number, numbersFor;
  const NumbersDetail({
    super.key,
    required this.number,
    required this.numbersFor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: Sizes.size18,
          ),
        ),
        Gaps.v5,
        Text(
          numbersFor,
          style: TextStyle(color: Colors.grey.shade500),
        ),
      ],
    );
  }
}
