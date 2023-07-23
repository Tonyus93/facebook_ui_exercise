import 'package:facebook_ui/widgets/header/stories/stories_card.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/utils/data.dart' as constants;

class StoriesList extends StatelessWidget {
  const StoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 10),
      child: SizedBox(
        height: 140,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => StoriesCard(
            imagePath: constants.stories[index]['imagePath'],
            userData: constants.stories[index]['userData'],
          ),
        ),
      ),
    );
  }
}
