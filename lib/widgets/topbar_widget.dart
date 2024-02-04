import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  String title;
  String subtitle;

  TopBarWidget({
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 190,
      decoration: const BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back))),
          ),
          Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  Text(subtitle,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
