import 'dart:async';

import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:flutter/material.dart';

class HeartTag extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HeartTagState();
}

class _HeartTagState extends State<HeartTag> with TickerProviderStateMixin {
  int _counter = 0;
  final Duration duration = Duration(milliseconds: 300);
  Timer timer;

  @override
  void initState() {
    super.initState();
    AnimationController scoreInAnimationController = AnimationController(
      duration: Duration(milliseconds: 150),
      vsync: this,
    );

    scoreInAnimationController.addListener(() {
      print(scoreInAnimationController.value);
    });

    scoreInAnimationController.forward(from: 0.0);
  }

  @override
  void dispose() {
    super.dispose();
  }

  void increment(Timer t) {
    setState(() {
      _counter++;
    });
  }

  void onTapDown(TapDownDetails tap) {
    increment(null);
    timer = new Timer.periodic(duration, increment);
  }

  void onTapUp(TapUpDetails tap) {
    return timer.cancel();
  }

  Widget getHeartPlusButton() {
    return Positioned(
      child: Opacity(
        opacity: 1.0,
        child: Container(
          height: 20,
          width: 20,
          decoration: ShapeDecoration(
            shape: CircleBorder(
              side: BorderSide.none,
            ),
            color: AppColors.pink,
          ),
          child: Center(
            child: Text(
              '+' + _counter.toString(),
              style: new TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0),
            ),
          ),
        ),
      ),
      bottom: 100.0,
    );
  }

  Widget getHeartButton() {
    return GestureDetector(
      onTapUp: onTapUp,
      onTapDown: onTapDown,
      child: Container(
        child: Icon(
          Icons.favorite_border,
          color: AppColors.pink,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 100,
      padding: EdgeInsets.only(
        left: Dimens.safeAreaSmall,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              Dimens.borderInputMedium,
            ),
          ),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow,
              blurRadius: Dimens.shadowBlurRadius,
              offset: Offset(Dimens.shadowX, Dimens.shadowY),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              getHeartPlusButton(),
              getHeartButton(),
            ],
          ),
          SizedBox(
            width: Dimens.marginSmall,
          ),
          Text(
            '8.190',
          ),
        ],
      ),
    );
  }
}
