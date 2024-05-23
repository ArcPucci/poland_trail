import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:trail_poland/data/routes.dart';
import 'package:trail_poland/providers/place_provider.dart';
import 'package:trail_poland/utils/utils.dart';
import 'package:trail_poland/widgets/widgets.dart';

class RoutesScreen extends StatefulWidget {
  const RoutesScreen({super.key});

  @override
  State<RoutesScreen> createState() => _RoutesScreenState();
}

class _RoutesScreenState extends State<RoutesScreen> {
  int selected = 0;

  void changeCategory(int id) {
    selected = id;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final overlay = MediaQuery.of(context).padding;
    return Consumer<PlaceProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return Column(
          children: [
            Container(
              width: 390.w,
              height: 270.h + overlay.top,
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
                  image: AssetImage('assets/images/quiz1.png'),
                  fit: BoxFit.cover,
                  opacity: 0.5,
                ),
              ),
              child: Column(
                children: [
                  const Spacer(),
                  Text(
                    'Hey! Tell us where you want to go',
                    style: ThemeStyles.white24,
                  ),
                  SizedBox(height: 16.h),
                  CustomSearchBar2(onChanged: value.onSearch),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              width: 358.w,
              height: 54.h,
              padding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 8.h,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  2,
                  (i) => GestureDetector(
                    onTap: () => changeCategory(i),
                    child: Container(
                      width: 159.w,
                      height: 38.h,
                      decoration: BoxDecoration(
                        color: i == selected ? ThemeColors.red : Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Center(
                        child: Text(
                          i == 0 ? "All" : 'Favourite',
                          style: i == selected
                              ? ThemeStyles.white15
                              : ThemeStyles.red15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: selected == 0
                  ? _buildRoutesBody(value)
                  : _buildFavoritesBody(value),
            ),
          ],
        );
      },
    );
  }

  Widget _buildRoutesBody(PlaceProvider value) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      itemCount: value.subRoutes.length,
      itemBuilder: (context, index) {
        final route = value.subRoutes[index];
        return Padding(
          padding: EdgeInsets.only(
            bottom: index == value.subRoutes.length - 1 ? 100.h : 16.h,
          ),
          child: PlaceCard(
            place: route,
            isLiked: value.favorites.contains(route.id),
            onLike: () => value.onLike(route),
            onTap: () {
              value.selectPlace(route);
              context.go('/routes/routes_info');
            },
          ),
        );
      },
    );
  }

  Widget _buildFavoritesBody(PlaceProvider value) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      itemCount: value.favoritePlaces.length,
      itemBuilder: (context, index) {
        final place = value.favoritePlaces[index];
        return Padding(
          padding: EdgeInsets.only(
            bottom: index == value.favoritePlaces.length - 1 ? 100.h : 16.h,
          ),
          child: PlaceCard(
            place: place,
            isLiked: true,
            onLike: () => value.onLike(place),
            onTap: () {
              value.selectPlace(place);
              context.go('/routes/routes_info');
            },
          ),
        );
      },
    );
  }
}
