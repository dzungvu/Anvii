import 'package:anvi/res/colors.dart';
import 'package:flutter/material.dart';

class BackButtonStyle1 extends StatelessWidget {
  final Function onPress;

  BackButtonStyle1({
    Key key,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: ClipOval(
        child: Container(
          color: AppColors.whiteAlPha,
          child: Icon(
            Icons.navigate_before,
            color: AppColors.white,
            size: 32,
          ),
        ),
      ),
    );
  }
}
