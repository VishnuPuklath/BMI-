import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  ReuseableCard({required this.color, this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      margin: const EdgeInsets.all(5.0),
      height: 200,
      width: 170,
    );
  }
}
