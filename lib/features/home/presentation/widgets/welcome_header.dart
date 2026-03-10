import 'package:flutter/material.dart';
import '../../../../core/theme/app_color.dart';
import '../../../../models/user_model.dart';

class WelcomeHeader extends StatelessWidget {
  final UserModel user;

  const WelcomeHeader({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome Back,',
                style: TextStyle(
                  color: AppColors.textGrey,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  height: 1.1,
                ),
              ),
              const SizedBox(height: 2),
              ShaderMask(
                shaderCallback: (bounds) =>  LinearGradient(
                  colors: [
                    AppColors.goldGradiant,
                    AppColors.lightGoldGradiant
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ).createShader(bounds),
                child:  Text(
                  user.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            color: AppColors.greyBackground,
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.greyBorderBackground,
              width: 1.5,
            ),
          ),
          child: Image.asset("assets/images/user.png")
        ),
      ],
    );
  }
}