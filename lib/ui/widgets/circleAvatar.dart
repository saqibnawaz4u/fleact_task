import 'package:fleact_task/core/constants/app_colors.dart';
import 'package:fleact_task/core/constants/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class customCircleAvatar extends StatelessWidget {
  const customCircleAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage('assets/circle_avatar.png'),
        ),
        Positioned(
          // bottom: 5.0,
          right: 10.0,
          child: Container(
            height: 30.0,
            width: 30.0,
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.black,
            ),
            child: Center(
              child: Icon(
                Icons.camera_alt_outlined,
                size: 20.0,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
