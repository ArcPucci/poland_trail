import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:trail_poland/data/data.dart';
import 'package:trail_poland/providers/place_provider.dart';
import 'package:trail_poland/utils/utils.dart';
import 'package:trail_poland/widgets/widgets.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Consumer<PlaceProvider>(
        builder: (BuildContext context, value, Widget? child) {
          return Column(
            children: [
              SizedBox(height: 16.h),
              CustomSearchBar(onChanged: value.onSearch),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryItem(
                    title: categories[0].title,
                    icon: categories[0].icon,
                    width: 175.w,
                    onTap: () => value.selectCategory(categories[0]),
                  ),
                  CategoryItem(
                    title: categories[1].title,
                    icon: categories[1].icon,
                    width: 175.w,
                    onTap: () => value.selectCategory(categories[1]),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryItem(
                    title: categories[2].title,
                    icon: categories[2].icon,
                    onTap: () => value.selectCategory(categories[2]),
                  ),
                  CategoryItem(
                    title: categories[3].title,
                    icon: categories[3].icon,
                    onTap: () => value.selectCategory(categories[3]),
                  ),
                  CategoryItem(
                    title: categories[4].title,
                    icon: categories[4].icon,
                    onTap: () => value.selectCategory(categories[4]),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recommended',
                  style: ThemeStyles.black24,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  itemCount: value.places.length,
                  itemBuilder: (context, index) {
                    final place = value.places[index];
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: index == value.places.length - 1 ? 100.h : 16.h,
                      ),
                      child: PlaceCard(
                        place: place,
                        isLiked: value.favorites.contains(place.id),
                        onLike: () => value.onLike(place),
                        onTap: () {
                          value.selectPlace(place);
                          context.go('/place_info');
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
