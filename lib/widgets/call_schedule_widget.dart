import 'package:flutter/material.dart';

class CallScheduleWidget extends StatelessWidget {
  Function()? onPressed;
  CallScheduleWidget({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 180, 213, 143),
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('YOUR GROWTH PARTNER IN \nDIGITAL TRANSFORMATION',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold)),
            ),
            ElevatedButton.icon(
                onPressed: onPressed,
                icon: const Icon(Icons.call),
                label: const Text('Schedule A Call'))
          ],
        ),
      ),
    );
  }
}
