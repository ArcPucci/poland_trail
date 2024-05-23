import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:trail_poland/main.dart';
import 'package:trail_poland/providers/place_provider.dart';
import 'package:trail_poland/utils/links.dart';
import 'package:trail_poland/utils/utils.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  bool purchaseLoading = false;

  @override
  Widget build(BuildContext context) {
    final overlay = MediaQuery.of(context).padding;
    return Material(
      color: ThemeColors.greyLight,
      child: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 24.w, right: 24.w, top: overlay.top + 16.h),
                  child: Row(
                    children: [
                      const Spacer(),
                      Text(
                        "PREMIUM",
                        style: ThemeStyles.black24,
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: context.pop,
                              child: Image.asset(
                                'assets/images/icons/red_close.png',
                                width: 24.w,
                                height: 24.h,
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/premium.png',
                  width: 368.w,
                  height: 263.h,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: 330.w,
                  height: 270.h,
                  padding: EdgeInsets.symmetric(vertical: 40.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('1. Access to all quizzes',
                          style: ThemeStyles.black24_h),
                      Text('2. Access to a random selection',
                          style: ThemeStyles.black24_h),
                      Text('3. No ADS', style: ThemeStyles.black24_h),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: _onBuyPremium,
                  child: Container(
                      width: 358.w,
                      height: 62.h,
                      decoration: BoxDecoration(
                        color: ThemeColors.red,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Center(
                          child: Text(
                        'BUY PREMIUM FOR \$1,99',
                        style: ThemeStyles.white15,
                      ))),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.h, bottom: 11.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => launchUri(Links.privacyPolicy),
                        child: Text(
                          'Privacy Policy',
                          style: ThemeStyles.black15,
                        ),
                      ),
                      SizedBox(width: 16.w),
                      GestureDetector(
                        onTap: () => launchUri(Links.termsOfUse),
                        child: Text(
                          'Terms of use',
                          style: ThemeStyles.black15,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: _onBuyPremium,
                  child: Text(
                    'Restore purchases',
                    style: ThemeStyles.black15,
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Visibility(
              visible: purchaseLoading,
              child: const Material(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onBuyPremium() async {
    final provider = Provider.of<PlaceProvider>(context, listen: false);

    provider.buyPremium();
    context.pop();
  }
}
