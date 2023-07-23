import 'package:facebook_ui/utils/facebook_icons.dart';
import 'package:facebook_ui/widgets/header/new_publication/new_publication_action.dart';
import 'package:flutter/material.dart';

class NewPublicationForm extends StatelessWidget {
  const NewPublicationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/users/1.jpg',
                ),
                radius: 26,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: "What's on your mind, Lisa?",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NewPublicationAction(
                color: Colors.lightGreen,
                icon: FacebookIcons.photos,
                text: 'Gallery',
              ),
              NewPublicationAction(
                color: Colors.lightBlueAccent,
                icon: FacebookIcons.userFriends,
                text: 'Tag Friends',
              ),
              NewPublicationAction(
                color: Colors.redAccent,
                icon: FacebookIcons.like,
                text: 'Like',
              ),
            ],
          )
        ],
      ),
    );
  }
}
