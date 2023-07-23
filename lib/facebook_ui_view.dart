import 'package:facebook_ui/utils/facebook_icons.dart';
import 'package:facebook_ui/widgets/circle_action.dart';
import 'package:facebook_ui/widgets/header/header.dart';
import 'package:facebook_ui/widgets/publications/publications_list.dart';
import 'package:facebook_ui/widgets/separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FacebookUiView extends StatelessWidget {
  const FacebookUiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: SvgPicture.asset(
            'assets/images/facebook.svg',
            colorFilter:
                const ColorFilter.mode(Colors.blueAccent, BlendMode.srcIn),
          ),
          leadingWidth: 150,
          actions: const [
            CircleAction(
              color: Colors.grey,
              icon: FacebookIcons.search,
            ),
            CircleAction(
              color: Colors.red,
              icon: FacebookIcons.bell,
            ),
            CircleAction(
              color: Colors.lightBlueAccent,
              icon: FacebookIcons.userFriends,
              hasBadge: true,
            ),
            CircleAction(
              color: Colors.blueAccent,
              icon: FacebookIcons.messenger,
            ),
          ],
        ),
        body: ListView(
          children: const [
            Header(),
            Separator(),
            PublicationsList(),
          ],
        ));
  }
}
