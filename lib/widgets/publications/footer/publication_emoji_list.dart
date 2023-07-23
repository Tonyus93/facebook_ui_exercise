import 'package:facebook_ui/utils/facebook_icons.dart';
import 'package:facebook_ui/widgets/publications/footer/publication_emoji.dart';
import 'package:flutter/material.dart';

class PublicationEmojiList extends StatelessWidget {
  const PublicationEmojiList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 180,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PublicationEmoji(
            color: Colors.blueAccent,
            icon: FacebookIcons.like_1,
          ),
          PublicationEmoji(
            color: Colors.red,
            icon: FacebookIcons.heart,
          ),
          PublicationEmoji(
            color: Colors.yellow,
            icon: FacebookIcons.laughing,
          ),
          PublicationEmoji(
            color: Colors.yellow,
            icon: FacebookIcons.shocked,
          ),
          PublicationEmoji(
            color: Colors.yellow,
            icon: FacebookIcons.angry,
          ),
          PublicationEmoji(
            color: Colors.red,
            icon: FacebookIcons.sad,
          ),
        ],
      ),
    );
  }
}
