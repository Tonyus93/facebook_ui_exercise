import 'package:facebook_ui/widgets/publications/footer/publication_data_list.dart';
import 'package:facebook_ui/widgets/publications/footer/publication_emoji_list.dart';
import 'package:flutter/material.dart';

class PublicationFooter extends StatelessWidget {
  final String comments;
  final String shares;
  final bool? isDetail;
  const PublicationFooter({
    super.key,
    required this.comments,
    required this.shares,
    this.isDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const PublicationEmojiList(),
          isDetail != true
              ? PublicationDataList(comments: comments, shares: shares)
              : Container(),
        ],
      ),
    );
  }
}
