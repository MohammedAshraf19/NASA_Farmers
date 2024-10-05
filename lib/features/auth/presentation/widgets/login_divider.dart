import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Container(
                color: Colors.grey,
                width: MediaQuery.of(context).size.width / 2.6,
                height: 1,
              ),
              Text(
                '  or  ',
                style: AppStyles.testStyle20.copyWith(
                    color: Colors.grey.shade600
                ),
              ),
              Container(
                color: Colors.grey,
                width: MediaQuery.of(context).size.width / 2.6,
                height: 1,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
