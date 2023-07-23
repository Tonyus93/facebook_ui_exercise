import 'package:facebook_ui/widgets/publications/detail/publication_detail_view.dart';
import 'package:facebook_ui/widgets/publications/footer/publication_footer.dart';
import 'package:facebook_ui/widgets/publications/publication_image.dart';
import 'package:facebook_ui/widgets/publications/publication_publisher.dart';
import 'package:flutter/material.dart';

class PublicationCard extends StatelessWidget {
  final Map<String, dynamic> publicationData;
  final bool? isDetail;
  const PublicationCard({
    super.key,
    required this.publicationData,
    this.isDetail,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => PublicationDetailView(
            publicationData: publicationData,
          ),
        ),
      ),
      child: Column(
        children: [
          PublicationPublisher(
            userData: publicationData['userData'],
            timeAgo: publicationData['timeAgo'],
          ),
          PublicationImage(
            imageData: publicationData['imageData'],
          ),
          PublicationFooter(
            comments: publicationData['comments'].length.toString(),
            shares: publicationData['shares'],
            isDetail: isDetail,
          ),
        ],
      ),
    );
  }
}
