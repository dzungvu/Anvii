import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:flutter/material.dart';

class AdditionInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: AdditionClipper(),
            child: Container(
              height: 350.0,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    AppColors.primaryColorLight,
                    AppColors.primaryColor,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipOval(
                    child: Container(
                      width: 64.0,
                      height: 64.0,
                      color: AppColors.white,
                      child: Icon(
                        Icons.add_a_photo,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Dimens.marginSmall,
                  ),
                  Text(
                    'Ảnh đại diện',
                    style: TextStyle(color: AppColors.white),
                  )
                ],
              ),
            ),
          ),
          
          Text(
            'Gender',
            style: TextStyle(
              color: AppColors.lightBlack,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

class AdditionClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80); // Top left
    path.quadraticBezierTo(
        /* X axis lowest point */ size.width / 2,
        /* Y axis lowest point */ size.height,
        /* End of curse line */ size.width,
        size.width - 80);
    path.lineTo(size.width, 0); // Top right
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
