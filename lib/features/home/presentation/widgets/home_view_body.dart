import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nasa_farmers/core/utils/app_routers.dart';
import 'package:nasa_farmers/core/utils/colors.dart';
import 'package:nasa_farmers/core/utils/styles.dart';
import 'package:nasa_farmers/core/widgets/custom_elevated_button.dart';
import 'package:nasa_farmers/core/widgets/land_card.dart';
import 'package:nasa_farmers/features/home/presentation/widgets/chart.dart';

import '../../../../core/utils/assets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Good Morning, Mohammed',
                style: AppStyles.testStyle16,
              ),
              const Spacer(),
              IconButton(
                  onPressed: (){
                    GoRouter.of(context).push(AppRouters.notificationView);
                  },
                  icon: const Icon(
                    Icons.notifications_active,
                    size: 30,
                    color: AppColor.kPrimaryColor,
                  )
              ),
            ],
          ),
          const LandCard(),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'The Analysis of Soil',
            style: AppStyles.testStyle25,
          ),
          // LineChartSample(),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              childAspectRatio: 1.2/1,
              children: [
                Card(
                  elevation: 5,
                  color: AppColor.kPrimaryWhite,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          'Wind Speed',
                        style: AppStyles.testStyle16.copyWith(
                          fontSize: 18
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Icon(
                          Icons.wind_power,
                        color: AppColor.kPrimaryColor,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        '50 KM/H',
                        style: AppStyles.testStyle16,
                      ),
                    ],
                  ),
                ),

                Card(
                  elevation: 5,
                  color: AppColor.kPrimaryWhite,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Soil Moisture',
                        style: AppStyles.testStyle16.copyWith(
                            fontSize: 18
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Icon(
                          Icons.water_drop,
                        color: AppColor.kPrimaryColor,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        '50',
                        style: AppStyles.testStyle16,
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  color: AppColor.kPrimaryWhite,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Membrane',
                        style: AppStyles.testStyle16.copyWith(
                            fontSize: 18
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Icon(
                        Icons.fastfood_rounded,
                        color: AppColor.kPrimaryColor,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        '50',
                        style: AppStyles.testStyle16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
