import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:flutter/material.dart';

class FillmGenresItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 30,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            Dimens.borderInputSuperLarge,
          ),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            offset: Offset(0, 4),
            color: AppColors.shadow,
          ),
        ],
      ),
    );
  }
}
