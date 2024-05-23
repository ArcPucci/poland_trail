import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:trail_poland/providers/place_provider.dart';
import 'package:trail_poland/utils/utils.dart';
import 'package:trail_poland/widgets/go_back.dart';
import 'package:trail_poland/widgets/rating_row.dart';

class PlaceInfoScreen extends StatelessWidget {
  const PlaceInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final overlay = MediaQuery.of(context).padding;
    return Consumer<PlaceProvider>(
      builder: (BuildContext context, value, Widget? child) {
        final isLiked = value.favorites.contains(value.place.id);
        return Stack(
          children: [
            Image.asset(
              value.place.bigImage,
              width: 390.w,
              height: 397.h + overlay.top,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: 390.w,
                height: 484.h,
                padding: EdgeInsets.all(16.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.r),
                    topRight: Radius.circular(16.r),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          value.place.title2 ?? value.place.title,
                          style: ThemeStyles.black24,
                        ),
                        GestureDetector(
                          onTap: () => value.onLike(value.place),
                          child: Image.asset(
                            isLiked
                                ? 'assets/images/icons/filled_heart.png'
                                : 'assets/images/icons/heart.png',
                            width: 24.w,
                            height: 24.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 9.h),
                    RatingRow(
                      rating: value.place.rate,
                      reviews: value.place.reviews,
                    ),
                    SizedBox(height: 33.h),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Text(
                          value.place.content,
                          style: ThemeStyles.grey15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 21.h,
              left: 16.w,
              child: const SafeArea(child: GoBack()),
            ),
          ],
        );
      },
    );
  }
}
