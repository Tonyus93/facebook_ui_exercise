import 'package:facebook_ui/widgets/publications/publication_publisher.dart';
import 'package:flutter/material.dart';

class PublicationDetailCommentItem extends StatelessWidget {
  final Map<String, dynamic> comment;
  const PublicationDetailCommentItem({
    super.key,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PublicationPublisher(
          userData: comment['userData'],
          timeAgo: comment['timeAgo'],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70, right: 20),
          child: Column(
            children: [
              Text(
                comment['message'],
                style: TextStyle(color: Colors.grey.shade500),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Like',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Reply',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
