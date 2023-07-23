import 'package:flutter/material.dart';

class PublicationDetailBottomBar extends StatelessWidget {
  const PublicationDetailBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: "Post a comment...",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.mood,
          ),
        ),
      ],
    );
  }
}
