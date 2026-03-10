import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/app_color.dart';
import '../../../data/mock_data.dart';
import '../../profile/presentation/profile_screen.dart';
import '../logic/home_cubit.dart';
import '../logic/home_state.dart';
import 'widgets/loyalty_points_card.dart';
import 'widgets/venue_card.dart';
import 'widgets/welcome_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        right: false,
        left: false,

        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            final cubit = context.read<HomeCubit>();

            return SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 22, 16, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WelcomeHeader(user: userData),
                  const SizedBox(height: 14),
                  LoyaltyPointsCard(
                    user: userData,
                    onMoreDetailsTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const ProfileScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    'Venue Selection',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                              child: VenueCard(
                                venue: cubit.venuesList[0],
                                onTap: () => cubit.selectVenue(0),
                              ),
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              height: 220,
                              child: VenueCard(
                                venue: cubit.venuesList[2],
                                onTap: () => cubit.selectVenue(2),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 220,
                              child: VenueCard(
                                venue: cubit.venuesList[1],
                                onTap: () => cubit.selectVenue(1),
                              ),
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              height: 180,
                              child: VenueCard(
                                venue: cubit.venuesList[3],
                                onTap: () => cubit.selectVenue(3),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}