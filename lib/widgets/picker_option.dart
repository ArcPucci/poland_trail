import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trail_poland/models/picker_option.dart';
import 'package:trail_poland/utils/utils.dart';

class PickerOptionCard extends StatelessWidget {
  const PickerOptionCard({
    super.key,
    this.onTap,
    required this.pickerOption,
  });

  final PickerOption pickerOption;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 171.w,
            height: 97.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16.r),
                topLeft: Radius.circular(16.r),
              ),
              image: DecorationImage(
                image: AssetImage(pickerOption.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 171.w,
            height: 39.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 8.h,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16.r),
                  bottomLeft: Radius.circular(16.r)),
            ),
            child: Text(
              pickerOption.text,
              style: ThemeStyles.black17,
            ),
          ),
        ],
      ),
    );
  }
}
