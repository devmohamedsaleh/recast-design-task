class VenueModel {
  final String name;
  final String category;
  final String image;
  final bool isSelected;

  VenueModel({
    required this.name,
    required this.category,
    required this.image,
    this.isSelected = false,
  });

  VenueModel copyWith({
    bool? isSelected,
  }) {
    return VenueModel(
      name: name,
      category: category,
      image: image,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}