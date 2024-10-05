import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nasa_farmers/core/utils/colors.dart';
import 'package:nasa_farmers/core/utils/styles.dart';
import 'package:nasa_farmers/core/widgets/custom_elevated_button.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../core/utils/app_routers.dart';

class LandViewBody extends StatelessWidget {
  const LandViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Choose Your Land Location',
            style: AppStyles.testStyle20,
          ),
          const SizedBox(
            height: 15,
          ),
          Image.asset(
            Assets.land,

          ),
          const SizedBox(
            height: 15,
          ),
          CustomElevatedButton(
            height: 90,
              onPressed: (){
                GoRouter.of(context).pushReplacement(AppRouters.homeView);
              },
              color: AppColor.kPrimaryWhite,
            child: Row(
              children: [
                FloatingActionButton(
                    onPressed: (){},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60)
                  ),
                  mini: true,
                  backgroundColor: AppColor.kPrimaryColor,
                  child: const Icon(
                    Icons.location_on_outlined,
                    color: AppColor.kPrimaryWhite,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Use Current Location',
                      style: AppStyles.testStyle18.copyWith(
                        color: AppColor.kPrimaryBlack
                      ),
                    ),
                    Text(
                        'Egypt, El-Sharqia, Zagazig',
                      style: AppStyles.testStyle14.copyWith(
                        color: AppColor.kPrimaryBlack.withOpacity(0.5)
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Icon(
                  size: 20,
                  Icons.arrow_forward_ios,
                  color: AppColor.kPrimaryBlack.withOpacity(0.5),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomElevatedButton(
            height: 90,
            onPressed: (){},
            color: AppColor.kPrimaryWhite,
            child: Row(
              children: [
                FloatingActionButton(
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60)
                  ),
                  mini: true,
                  backgroundColor: AppColor.kPrimaryColor,
                  child: const Icon(
                    Icons.location_on_outlined,
                    color: AppColor.kPrimaryWhite,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Set Location Manual',
                  style: AppStyles.testStyle18.copyWith(
                      color: AppColor.kPrimaryBlack
                  ),
                ),
                Spacer(),
                Icon(
                  size: 20,
                  Icons.arrow_forward_ios,
                  color: AppColor.kPrimaryBlack.withOpacity(0.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
