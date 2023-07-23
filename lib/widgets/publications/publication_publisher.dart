import 'package:flutter/material.dart';

class PublicationPublisher extends StatelessWidget {
  final Map<String, String> userData;
  final String timeAgo;
  const PublicationPublisher({
    super.key,
    required this.userData,
    required this.timeAgo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  userData['avatarPath']!,
                ),
                radius: 16,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                userData['name']!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(timeAgo),
        ],
      ),
    );
  }
}
