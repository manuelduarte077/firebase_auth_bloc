import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {
  final String text;
  final String imageUrl;
  final Color color;

  const DescriptionPage({
    Key? key,
    required this.text,
    required this.imageUrl,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.only(top: 150, bottom: 20),
        child: Column(
          children: [
            Image.network(imageUrl, height: 200, width: 200),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
