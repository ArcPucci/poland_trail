import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:trail_poland/data/data.dart';
import 'package:trail_poland/providers/providers.dart';
import 'package:trail_poland/utils/utils.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    super.key,
    required this.child,
    this.hasBottomBar = true,
    required this.currentPath,
    this.hasSafeArea = true,
  });

  final Widget child;
  final bool hasBottomBar;
  final bool hasSafeArea;
  final String currentPath;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  void _onTap(String path) {
    final provider = Provider.of<PlaceProvider>(
      context,
      listen: false,
    );
    provider.init();
    setState(() {
      context.go(path);
    });
  }

  @override
  Widget build(BuildContext context) {
    final overlay = MediaQuery.of(context).padding;
    return Material(
      color: ThemeColors.greyLight,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned.fill(
            child: SafeArea(
              top: widget.hasSafeArea && widget.hasBottomBar,
              bottom: widget.hasSafeArea && widget.hasBottomBar,
              left: widget.hasSafeArea && widget.hasBottomBar,
              right: widget.hasSafeArea && widget.hasBottomBar,
              child: widget.child,
            ),
          ),
          Visibility(
            visible: widget.hasBottomBar,
            child: Padding(
              padding: EdgeInsets.only(bottom: overlay.bottom + 15.h),
              child: Container(
                width: 358.w,
                height: 75.h,
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                decoration: BoxDecoration(
                  color: ThemeColors.red,
                  borderRadius: BorderRadius.circular(40.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    tapBarItems.length,
                    (i) => GestureDetector(
                      onTap: () => _onTap(tapBarItems[i].path),
                      child: Container(
                        width: 50.w,
                        height: 43.h,
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              widget.currentPath == tapBarItems[i].path
                                  ? tapBarItems[i].selectedImg
                                  : tapBarItems[i].regularImg,
                              width: 24.w,
                              height: 24.h,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              tapBarItems[i].title,
                              style: ThemeStyles.greyLight12,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
