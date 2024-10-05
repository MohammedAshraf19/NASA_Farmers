import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nasa_farmers/core/utils/assets.dart';
import 'package:nasa_farmers/core/utils/colors.dart';
import 'package:nasa_farmers/features/home/presentation/widgets/notification_item.dart';

import '../../../../core/utils/styles.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60)
            ),
              onPressed: (){
              GoRouter.of(context).pop();
              },
            mini: true,
            backgroundColor: AppColor.kPrimaryWhite,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AppColor.kPrimaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Recent Notification',
                  style: AppStyles.testStyle25,
                ),
                Text(
                  'Check What\'s New',
                  style: AppStyles.testStyle14.copyWith(
                    color: AppColor.kPrimaryBlack.withOpacity(0.5)
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context,index)=>const NotificationItem(),
                separatorBuilder: (context,index) => const SizedBox(height: 10,),
                itemCount: 5
            ),
          )

        ],
      ),
    );
  }
}
