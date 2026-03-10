import 'package:flutter/material.dart';
import '../../../../core/theme/app_color.dart';
import '../../../../models/venue_model.dart';

class VenueCard extends StatelessWidget {
  final VenueModel venue;
  final VoidCallback onTap;

  const VenueCard({
    super.key,
    required this.venue,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              venue.image,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.12),
                    Colors.black.withOpacity(0.58),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 12,
              right: 12,
              bottom: 12,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          venue.category,
                          style:  TextStyle(
                            color: AppColors.textGrey,
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          venue.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: AppColors.gold,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 31,
                    height: 31,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.28),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.border,
                        width: 0.5,
                      ),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.gold,
                      size: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}