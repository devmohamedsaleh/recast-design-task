import 'package:flutter/material.dart';
import 'package:recastdesign/core/theme/app_color.dart';
import '../../../../models/user_model.dart';

class LoyaltyPointsCard extends StatelessWidget {
  final UserModel user;
  final VoidCallback onMoreDetailsTap;

  const LoyaltyPointsCard({
    super.key,
    required this.user,
    required this.onMoreDetailsTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 14),
      decoration: BoxDecoration(
        color: AppColors.greyCard,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'AlterNow',
                      style: TextStyle(
                        color: AppColors.textGrey,
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Loyalty Points',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
               Image.asset("assets/images/user.png",width: 19,height: 19,),
            ],
          ),
          const SizedBox(height: 10),
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
              "21,750",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 22,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.47,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.goldGradiant,
                      AppColors.lightGoldGradiant
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Total Orders',
                          style: TextStyle(
                            color: AppColors.textGrey,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 6),
                        Text(
                          '24',
                          style: TextStyle(
                            color: AppColors.gold,
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Row(
                      children: [
                        _FoodAvatar(),
                        SizedBox(width: 4),
                        _FoodAvatar(),
                        SizedBox(width: 4),
                        _FoodAvatar(),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: onMoreDetailsTap,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 11,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.white, width: 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'More details',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.arrow_forward,
                        size: 11,
                        color: AppColors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FoodAvatar extends StatelessWidget {
  const _FoodAvatar();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black, width: 1),
        image: const DecorationImage(
          image: AssetImage('assets/images/food.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}