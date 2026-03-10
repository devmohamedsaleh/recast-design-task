class UserModel {
  final String name;
  final String phone;
  final String avatar;
  final int loyaltyPoints;
  final int totalOrders;

  UserModel({
    required this.name,
    required this.phone,
    required this.avatar,
    required this.loyaltyPoints,
    required this.totalOrders,
  });
}