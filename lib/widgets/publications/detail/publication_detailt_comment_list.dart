import 'package:facebook_ui/widgets/publications/detail/publication_detail_comment_item.dart';
import 'package:flutter/material.dart';

class PublicationDetailCommentList extends StatelessWidget {
  final List<Map<String, dynamic>> comments;
  const PublicationDetailCommentList({
    super.key,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Comments',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (context, commentsIndex) => Column(
            children: [
              PublicationDetailCommentItem(
                comment: comments[commentsIndex],
              ),
              comments[commentsIndex]['replies']?.length > 0
                  ? ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: comments[commentsIndex]['replies']?.length,
                      itemBuilder: (context, repliesIndex) => Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: PublicationDetailCommentItem(
                          comment: comments[commentsIndex]['replies']
                              [repliesIndex],
                        ),
                      ),
                    )
                  : Container()
            ],
          ),
        )
      ],
    );
  }
}
