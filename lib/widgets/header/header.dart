import 'package:facebook_ui/widgets/header/new_publication/new_publication_form.dart';
import 'package:facebook_ui/widgets/header/stories/stories_list.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        NewPublicationForm(),
        StoriesList(),
      ],
    );
  }
}
