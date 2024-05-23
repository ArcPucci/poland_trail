import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:trail_poland/providers/providers.dart';
import 'package:trail_poland/utils/utils.dart';
import 'package:trail_poland/widgets/widgets.dart';

class PickPlaceScreen extends StatelessWidget {
  const PickPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final overlay = MediaQuery.of(context).padding;
    return Consumer<PlaceProvider>(
      builder: (BuildContext context, PlaceProvider value, Widget? child) {
        return Column(
          children: [
            Container(
              width: 390.w,
              height: 201.h + overlay.top,
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16.r),
                  bottomRight: Radius.circular(16.r),
                ),
                image: const DecorationImage(
                  image: AssetImage('assets/images/header2.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const GoBack(),
                    const Spacer(),
                    Text(
                      value.pickerOption.text,
                      style: ThemeStyles.white24,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.randomPlaces.length,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 16.h,
                ),
                itemBuilder: (context, index) {
                  final place = value.randomPlaces[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: PlaceCard(
                      place: place,
                      isLiked: value.favorites.contains(place.id),
                      onLike: () => value.onLike(place),
                      onTap: () {
                        value.selectPlace(place);
                        context
                            .go('/picker/number_seats/pick_place/place_info');
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
