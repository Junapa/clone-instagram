import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/contants/sizes.dart';

class PostVideoButton extends StatelessWidget {
  final int selectedIndex;
  const PostVideoButton({
    super.key,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          right: 20,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.size8,
              ),
              height: 32,
              width: 23,
              decoration: BoxDecoration(
                color: const Color(0xff61D4F0),
                borderRadius: BorderRadius.circular(Sizes.size8),
              ),
            ),
          ),
        ),
        Positioned(
          left: 20,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size8,
            ),
            height: 32,
            width: 23,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(Sizes.size8),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size11,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              Sizes.size6,
            ),
            color: selectedIndex == 0 ? Colors.white : Colors.black,
          ),
          height: 32,
          child: Center(
            child: FaIcon(
              FontAwesomeIcons.plus,
              color: selectedIndex == 0 ? Colors.black : Colors.white,
              size: 18,
            ),
          ),
        )
      ],
    );
  }
}
