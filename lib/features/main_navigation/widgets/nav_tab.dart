import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/contants/gaps.dart';
import 'package:tiktok_clone/contants/sizes.dart';

class NavTab extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;
  const NavTab(
      {super.key,
      required this.title,
      required this.icon,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.black,
          child: AnimatedOpacity(
            opacity: isSelected ? 1 : 0.3,
            duration: const Duration(milliseconds: 300),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FaIcon(
                  icon,
                  color: Colors.white,
                  size: isSelected ? Sizes.size24 : Sizes.size20,
                ),
                Gaps.v5,
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isSelected ? Sizes.size14 : Sizes.size10,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
