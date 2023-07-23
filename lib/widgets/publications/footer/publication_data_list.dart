import 'package:facebook_ui/widgets/publications/footer/publication_data_item.dart';
import 'package:flutter/material.dart';

class PublicationDataList extends StatelessWidget {
  final String comments;
  final String shares;
  const PublicationDataList({
    super.key,
    required this.comments,
    required this.shares,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PublicationDataItem(type: 'Comments', data: comments),
        const SizedBox(
          width: 10,
        ),
        PublicationDataItem(type: 'Shares', data: shares),
      ],
    );
  }
}
