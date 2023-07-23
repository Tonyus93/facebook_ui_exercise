import 'package:facebook_ui/widgets/publications/publication_card.dart';
import 'package:facebook_ui/widgets/separator.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/utils/data.dart' as constants;

class PublicationsList extends StatelessWidget {
  const PublicationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const Separator(),
      itemCount: 3,
      itemBuilder: (context, index) => PublicationCard(
        publicationData: constants.publications[index],
      ),
    );
  }
}
