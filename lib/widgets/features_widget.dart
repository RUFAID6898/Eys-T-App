import 'package:flutter/material.dart';

class FeaturesWidget extends StatelessWidget {
  String title;
  String expline;
  Color color;
  FeaturesWidget({
    required this.title,
    required this.expline,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: color,
      child: Column(
        children: [
          Text(title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              expline,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
