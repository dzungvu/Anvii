import 'dart:math';

import 'package:anvi/res/colors.dart';
import 'package:flutter/material.dart';

class CircleProgress extends StatefulWidget {
  final double percent;
  CircleProgress({Key key, @required this.percent}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CircleProgressState();
  }
}

class _CircleProgressState extends State<CircleProgress>
    with SingleTickerProviderStateMixin {
  AnimationController progressController;
  Animation animation;

  @override
  void initState() {
    super.initState();
    progressController = AnimationController(
      vsync: this,
      duration: Duration(
        microseconds: 1000,
      ),
    );

    animation =
        Tween<double>(begin: 0, end: widget.percent).animate(progressController)
          ..addListener(() {
            setState(() {});
          });

    progressController.forward();
  }

  @override
  void dispose() {
    progressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(animation.value);

    return CustomPaint(
      painter: _CircleProgressPainter(percent: animation.value),
      child: Container(
        width: 120,
        height: 120,
        child: Center(
          child: Text('${animation.value}%'),
        ),
      ),
    );
  }
}

class _CircleProgressPainter extends CustomPainter {
  final double percent;
  _CircleProgressPainter({@required this.percent});

  @override
  void paint(Canvas canvas, Size size) {
    Paint outerCircle = Paint()
      ..strokeWidth = 1
      ..color = AppColors.black80
      ..style = PaintingStyle.stroke;

    Paint completeArc = Paint()
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..color = AppColors.primaryColor
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2) - 8;
    canvas.drawCircle(center, radius, outerCircle);

    var angle = 2 * pi * (percent / 100);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      angle,
      false,
      completeArc,
    );
  }

  @override
  bool shouldRepaint(_CircleProgressPainter oldDelegate) {
    return oldDelegate.percent != percent;
  }
}
