import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:nasa_farmers/const.dart';
import 'package:nasa_farmers/core/utils/app_routers.dart';
import 'package:nasa_farmers/core/utils/assets.dart';
import 'package:nasa_farmers/core/utils/cache_helper.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),(){
        if (CacheHelper().getData(key: userId) == null) {
          GoRouter.of(context).push(AppRouters.choiceView);
        }
        else {
          GoRouter.of(context).pushReplacement(AppRouters.homeView);
        }
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Lottie.asset(Assets.splash)
    );
  }
}
