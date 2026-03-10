class LoyaltyHistoryModel {
  final String venueName;
  final String date;
  final String amount;
  final int earnedCredits;
  final int badgeCredits;
  final String image;

  LoyaltyHistoryModel({
    required this.venueName,
    required this.date,
    required this.amount,
    required this.earnedCredits,
    required this.badgeCredits,
    required this.image,
  });
}