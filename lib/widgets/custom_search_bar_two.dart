import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trail_poland/utils/utils.dart';

class CustomSearchBar2 extends StatefulWidget {
  const CustomSearchBar2({
    super.key,
    this.onChanged,
  });

  final void Function(String query)? onChanged;

  @override
  State<CustomSearchBar2> createState() => _CustomSearchBar2State();
}

class _CustomSearchBar2State extends State<CustomSearchBar2> {
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: focusNode.requestFocus,
      child: Container(
        width: 358.w,
        height: 48.h,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(40.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: [
            Image.asset(
              'assets/images/icons/search_white.png',
              width: 24.w,
              height: 24.h,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: TextField(
                style: ThemeStyles.greyLight16.copyWith(color: Colors.white),
                onChanged: widget.onChanged,
                decoration: InputDecoration.collapsed(
                  hintText: 'Search places...',
                  hintStyle: ThemeStyles.greyLight16,
                ),
              ),
            ),
            SizedBox(width: 16.w),
            Image.asset(
              'assets/images/icons/parameter.png',
              width: 24.w,
              height: 24.h,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}
