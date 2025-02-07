import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    required this.title,
    this.color = const Color(0xff343434),
    required this.onPress,
    super.key,
  });

  final String title;
  final Color color;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  // color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
