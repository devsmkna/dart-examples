import 'package:flutter/material.dart';

class ContactImage extends StatelessWidget {
  final String imageUrl;
  final double size;

  const ContactImage({super.key, required this.imageUrl, required this.size});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(imageUrl),
      radius: size,
    );
  }
}