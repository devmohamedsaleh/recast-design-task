import 'package:flutter/material.dart';
import 'package:recastdesign/core/theme/app_color.dart';
import '../../../../models/loyalty_history_model.dart';

class LoyaltyHistoryCard extends StatelessWidget {
  final LoyaltyHistoryModel item;

  const LoyaltyHistoryCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.darkGreyCard,
        borderRadius: BorderRadius.circular(11),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                item.image,
                fit: BoxFit.cover,

              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: SizedBox(
              height: 54,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            AppColors.goldGradiant,
                            AppColors.lightGoldGradiant
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Text(
                        '${item.badgeCredits} Credits',
                        style: const TextStyle(
                          color: AppColors.black,
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Text(
                      item.venueName,
                      style: const TextStyle(
                        color: AppColors.textMoreLightGrey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 18,
                    child: Text(
                      item.date,
                      style: const TextStyle(
                        color: AppColors.textLighterGrey,
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: ShaderMask(
                      shaderCallback: (bounds) {
                        return const LinearGradient(
                          colors: [
                           AppColors.goldGradiant,
                            AppColors.lightGoldGradiant
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ).createShader(bounds);
                      },
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            color: AppColors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(text: '${item.amount} • '),
                            TextSpan(text: '${item.earnedCredits} Credits'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 4,
                    bottom: 2,
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 13,
                      color: AppColors.iconGreyColor
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}