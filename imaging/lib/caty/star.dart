import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final Color? color;
  final double? size;

  const Star({
    Key? key,
    this.color,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: _StarPainter(color!),
      ),
    );
  }
}

class _StarPainter extends CustomPainter {
  final Color color;

  _StarPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    /// A little Hint when we use single dot [.] then it would be like this
    /// final paint = Paint();
    /// paint.color();
    /// etc so I wil use double dot [..] instead, it becomes much faster to write.
    final paint = Paint()..color;

    final path = Path();
    path.moveTo(size.width * 0.5, 0);
    path.lineTo(size.width * 0.618, size.height * 0.382);
    path.lineTo(size.width, size.height * 0.382);
    path.lineTo(size.width * 0.691, size.height * 0.618);
    path.lineTo(size.width * 0.809, size.height);
    path.lineTo(size.width * 0.5, size.height * 0.7639);
    path.lineTo(size.width * 0.191, size.height);
    path.lineTo(size.width * 0.309, size.height * 0.618);
    path.lineTo(size.width * 0.309, size.height * 0.618);
    path.lineTo(0, size.height * 0.382);
    path.lineTo(size.width * 0.382, size.height * 0.382);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class StarRating extends StatelessWidget {
  final Color? color;
  final int value;
  final double? starSize;

  const StarRating({Key? key, this.color, required this.value, this.starSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List<Widget>.generate(
        value,
        (index) => Padding(
          padding: EdgeInsets.all(2.0),
          child: Star(
            color: color,
            size: starSize,
          ),
        ),
      ),
    );
  }
}
