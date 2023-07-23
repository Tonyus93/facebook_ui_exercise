import 'package:flutter/material.dart';

class PublicationDataItem extends StatelessWidget {
  final String type;
  final String data;
  const PublicationDataItem({
    super.key,
    required this.type,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          data,
          style: const TextStyle(fontSize: 11),
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          type,
          style: const TextStyle(fontSize: 11),
        ),
      ],
    );
  }
}
