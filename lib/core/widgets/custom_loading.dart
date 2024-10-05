import 'package:flutter/material.dart';
import 'package:nasa_farmers/core/utils/colors.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoadingItem extends StatelessWidget {
  const CustomLoadingItem({super.key, required this.width, required this.height});
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
        baseColor: Colors.white,
        highlightColor: AppColor.kPrimaryColor,
        child: Container(
          padding: const EdgeInsetsDirectional.all(20),
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}