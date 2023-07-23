import 'package:facebook_ui/widgets/circle_action.dart';
import 'package:facebook_ui/widgets/publications/detail/publication_detail_bottom_bar.dart';
import 'package:facebook_ui/widgets/publications/detail/publication_detailt_comment_list.dart';
import 'package:facebook_ui/widgets/publications/publication_card.dart';
import 'package:flutter/material.dart';

class PublicationDetailView extends StatelessWidget {
  final Map<String, dynamic> publicationData;
  const PublicationDetailView({
    super.key,
    required this.publicationData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          CircleAction(
            color: Colors.grey,
            icon: Icons.redo,
          ),
        ],
      ),
      bottomNavigationBar: const PublicationDetailBottomBar(),
      body: ListView(
        children: [
          PublicationCard(
            publicationData: publicationData,
            isDetail: true,
          ),
          publicationData['comments'].isNotEmpty
              ? PublicationDetailCommentList(
                  comments: publicationData['comments'],
                )
              : const Center(child: Text('No comments')),
        ],
      ),
    );
  }
}
