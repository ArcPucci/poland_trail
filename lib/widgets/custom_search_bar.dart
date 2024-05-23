import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trail_poland/utils/utils.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    super.key,
    this.onChanged,
  });

  final void Function(String query)? onChanged;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: focusNode.requestFocus,
      child: Container(
        width: 358.w,
        height: 48.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: Image.asset(
                'assets/images/icons/search.png',
                width: 24.w,
                height: 24.h,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: TextField(
                style: ThemeStyles.grey16.copyWith(color: ThemeColors.black),
                onChanged: widget.onChanged,
                decoration: InputDecoration.collapsed(
                  hintText: 'Search places...',
                  hintStyle: ThemeStyles.grey16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
