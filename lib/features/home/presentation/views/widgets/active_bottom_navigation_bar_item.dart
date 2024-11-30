
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';

class ActiveBottomNavigationBarItem extends StatelessWidget {
  const ActiveBottomNavigationBarItem(
      {super.key, required this.name, required this.activeImageItem});

  final String name;
  final String activeImageItem;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 30,
        width: 90,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Color(0xffEEEEEE),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                width: 30,
                height: 30,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: AppColors.greenColor,
                ),
                child: SvgPicture.asset(
                  activeImageItem,
                  fit: BoxFit.scaleDown,
                )),
            SizedBox(
              width: 4,
            ),
            Text(name),
          ],
        ),
      ),
    );
  }
}


