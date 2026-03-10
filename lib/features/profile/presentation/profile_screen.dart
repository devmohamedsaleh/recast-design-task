import 'package:flutter/material.dart';
import '../../../core/theme/app_color.dart';
import '../../../data/mock_data.dart';
import 'widgets/loyalty_history_card.dart';
import 'widgets/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 22, 16, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Your Profile',
                      style: TextStyle(
                        color: AppColors.textLightGrey,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings_outlined,
                      color: AppColors.textLightGrey,
                      size: 28,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              ProfileHeader(user: userData),
              const SizedBox(height: 22),
              const Text(
                'Loyalty History',
                style: TextStyle(
                  color:AppColors.textLightGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: loyaltyHistory.length,
                  itemBuilder: (context, index) {
                    return LoyaltyHistoryCard(item: loyaltyHistory[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}