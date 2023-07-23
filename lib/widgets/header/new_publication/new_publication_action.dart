import 'package:facebook_ui/widgets/circle_action.dart';
import 'package:flutter/material.dart';

class NewPublicationAction extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  const NewPublicationAction({
    super.key,
    required this.color,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CircleAction(
            padding: const EdgeInsets.all(0),
            color: color,
            icon: icon,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 40,
              right: 20,
            ),
            decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
