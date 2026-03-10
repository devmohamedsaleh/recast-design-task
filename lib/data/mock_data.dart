import '../models/user_model.dart';
import '../models/venue_model.dart';
import '../models/loyalty_history_model.dart';

final userData = UserModel(
  name: "Asmar Ajlouni",
  phone: "+962 234 567 2349",
  avatar: "assets/images/profile.png",
  loyaltyPoints: 21750,
  totalOrders: 24,
);

final venues = [
  VenueModel(
    name: "Ceano",
    category: "Nikkei",
    image: "assets/images/ceano.png",
    isSelected: true,
  ),
  VenueModel(
    name: "Nobiko",
    category: "Restaurant",
    image: "assets/images/nobiko.png",
  ),
  VenueModel(
    name: "Dovely",
    category: "Casual",
    image: "assets/images/dovely.png",
  ),
  VenueModel(
    name: "Olivestree",
    category: "Bakery",
    image: "assets/images/olivestree.png",
  ),
];

final loyaltyHistory = [
  LoyaltyHistoryModel(
    venueName: "Nobiko Bistro",
    date: "06 Jan, 2025",
    amount: "125.32 JD",
    earnedCredits: 230,
    badgeCredits: 325,
    image: "assets/images/food.png",
  ),
  LoyaltyHistoryModel(
    venueName: "Nobiko Bistro",
    date: "06 Jan, 2025",
    amount: "125.32 JD",
    earnedCredits: 230,
    badgeCredits: 325,
    image: "assets/images/food.png",
  ),
  LoyaltyHistoryModel(
    venueName: "Nobiko Bistro",
    date: "06 Jan, 2025",
    amount: "125.32 JD",
    earnedCredits: 230,
    badgeCredits: 325,
    image: "assets/images/food.png",
  ),
  LoyaltyHistoryModel(
    venueName: "Nobiko Bistro",
    date: "06 Jan, 2025",
    amount: "125.32 JD",
    earnedCredits: 230,
    badgeCredits: 325,
    image: "assets/images/food.png",
  ),  LoyaltyHistoryModel(
    venueName: "Nobiko Bistro",
    date: "06 Jan, 2025",
    amount: "125.32 JD",
    earnedCredits: 230,
    badgeCredits: 325,
    image: "assets/images/food.png",
  ),
];