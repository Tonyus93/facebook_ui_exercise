import 'package:flutter/material.dart';

class PublicationEmoji extends StatelessWidget {
  final Color color;
  final IconData icon;

  const PublicationEmoji({
    super.key,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
        ));
  }
}
