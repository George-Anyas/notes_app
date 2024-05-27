import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(
      {super.key, required this.icon, required this.title, this.onpressed});
  final IconData icon;
  final String title;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          size: 28,
        ),
      ),
    );
  }
}
