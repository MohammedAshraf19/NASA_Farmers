import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_farmers/core/utils/colors.dart';
import 'package:nasa_farmers/features/home/presentation/manager/home_cbit/home_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white, // Set the status bar color to green
        statusBarIconBrightness: Brightness
            .dark, // Make the status bar icons light-colored
      ),
    );
    return BlocBuilder<BottomBarCubit, BottomBarState>(
  builder: (context, state) {
    return Scaffold(
      body:  SafeArea(
          child: BottomBarCubit.get(context).screens[BottomBarCubit.get(context).currentIndex]
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.kPrimaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60)
        ),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: AppColor.kPrimaryWhite,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: AppColor.kPrimaryWhite,
        notchMargin: 12.0,
        height: 85,
        child: BottomNavigationBar(
            backgroundColor: AppColor.kPrimaryWhite,
            selectedItemColor: AppColor.kPrimaryColor,
            currentIndex: BottomBarCubit.get(context).currentIndex,
            onTap: (index) {
              BottomBarCubit.get(context).changeIndex(index);
            },
            elevation: 0,
            unselectedItemColor: AppColor.kPrimaryBlack.withOpacity(0.6),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                      Icons.home
                  ),
                  label: 'Home'
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                      Icons.people
                  ),
                  label: 'Community'
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                      Icons.file_present_outlined
                  ),
                  label: 'Records'
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                      Icons.person
                  ),
                  label: 'Profile'
              ),
            ]
        ),
      ),
    );
  },
);
  }
}
