import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/blocs/gender_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GenderPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GenderBloc _bloc = GenderBloc();
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              _bloc.selectItem(Gender.MALE);
            },
            child: StreamBuilder(
                stream: _bloc.getStream,
                builder: (context, snapshot) {
                  return Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: snapshot.data == Gender.MALE
                          ? AppColors.black80
                          : AppColors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(Dimens.marginSmall),
                      child: SvgPicture.asset(
                        'lib/res/assets/man.svg',
                        height: 32.0,
                        width: 32.0,
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            width: Dimens.marginCommon,
          ),
          GestureDetector(
            onTap: () {
              _bloc.selectItem(Gender.FEMALE);
            },
            child: StreamBuilder(
                stream: _bloc.getStream,
                builder: (context, snapshot) {
                  return Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: snapshot.data == Gender.FEMALE
                          ? AppColors.black80
                          : AppColors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(Dimens.marginSmall),
                      child: SvgPicture.asset(
                        'lib/res/assets/female.svg',
                        height: 32.0,
                        width: 32.0,
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
