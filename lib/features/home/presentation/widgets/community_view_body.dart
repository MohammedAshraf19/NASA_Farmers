import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/styles.dart';

class CommunityViewBody extends StatelessWidget {
  const CommunityViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Recent Posts',
                      style: AppStyles.testStyle25,
                    ),
                    Text(
                      'Share Experience With Your Friend',
                      style: AppStyles.testStyle14.copyWith(
                          color: AppColor.kPrimaryBlack.withOpacity(0.5)
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              FloatingActionButton(
                  onPressed: (){},

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
                ),
                backgroundColor: AppColor.kPrimaryColor,
                child: const Icon(
                  Icons.add,
                  color: AppColor.kPrimaryWhite,
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context,index)=>Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: AppColor.kPrimaryLightColor,
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(Assets.person),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Amr Mohammed',
                              style: AppStyles.testStyle14.copyWith(
                                color: AppColor.kPrimaryBlack,
                              ),
                            ),
                            Text(
                              '1 hr ago',
                              style: AppStyles.testStyle14.copyWith(
                                  color: AppColor.kPrimaryBlack.withOpacity(0.5),
                                  fontSize: 12
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Hey everyone, I’m growing wheat, and I’d like to know the best times to water the crops during this season. Any tips on how much water is enough to avoid over or under-watering',
                      style: AppStyles.testStyle16,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.kPrimaryLightColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(200),
                                  side:  BorderSide(
                                      color: AppColor.kPrimaryBlack.withOpacity(0.4)
                                  )
                              ),
                              fixedSize: const Size(125,30)
                          ),
                          onPressed: (){},
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.arrow_upward_rounded,
                                color: AppColor.kPrimaryBlack.withOpacity(0.4),
                                size: 20,
                              ),
                              const Spacer(),
                              Text(
                                'Vote',
                                style: AppStyles.testStyle16.copyWith(
                                  color: AppColor.kPrimaryBlack.withOpacity(0.4),
                                ),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.arrow_downward_outlined,
                                color: AppColor.kPrimaryBlack.withOpacity(0.4),
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.kPrimaryLightColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(200),
                                  side:  BorderSide(
                                      color: AppColor.kPrimaryBlack.withOpacity(0.4)
                                  )
                              ),
                              fixedSize: const Size(77,30)
                          ),
                          onPressed: (){},
                          child:  Row(
                            children: [
                              Icon(
                                Icons.chat_bubble_outline,
                                color: AppColor.kPrimaryBlack.withOpacity(0.4),
                                size: 20,
                              ),
                              Text(
                                '0',
                                style: AppStyles.testStyle14.copyWith(
                                  color: AppColor.kPrimaryBlack.withOpacity(0.4),
            
                                ),
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.kPrimaryLightColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(200),
                                  side:  BorderSide(
                                      color: AppColor.kPrimaryBlack.withOpacity(0.4)
                                  )
                              ),
                              fixedSize: const Size(20,20)
                          ),
                          onPressed: (){},
                          child:  Icon(
                            Icons.share_outlined,
                            color: AppColor.kPrimaryBlack.withOpacity(0.4),
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
              separatorBuilder: (context,index)=>const SizedBox(height: 10),
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
