import 'package:flutter/material.dart';
import 'package:morphable_shape/morphable_shape.dart';

class PolygonIcons extends StatelessWidget {
  final Widget child;
  final CornerStyle cornerStyle;
  final Dimension cornerRadius;
  final Color color;
  final double width;
  final double height;
  final int sides;

  const PolygonIcons({
    super.key,
    required this.cornerStyle,
    required this.cornerRadius,
    required this.color,
    required this.child,
    this.width = 200,
    this.height = 200,
    this.sides = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: PolygonShapeBorder(
          sides: sides, cornerStyle: cornerStyle, cornerRadius: cornerRadius),
      clipBehavior: Clip.antiAlias,
      child: Container(
        padding: const EdgeInsets.all(14),
        width: width,
        height: height,
        color: color,
        child: child,
      ),
    );
  }
}
