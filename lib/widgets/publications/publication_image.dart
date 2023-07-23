import 'package:flutter/material.dart';

class PublicationImage extends StatelessWidget {
  final Map<String, String> imageData;
  const PublicationImage({
    super.key,
    required this.imageData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.asset(
            imageData['path']!,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            imageData['title']!,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
