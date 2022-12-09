class HeadModel {
  final int fullBody;
  final int prints;
  final int paintings;

  HeadModel({
    required this.fullBody,
    required this.prints,
    required this.paintings,
  });

  HeadModel copyWith({
    int? fullBody,
    int? prints,
    int? paintings,
  }) {
    return HeadModel(
      fullBody: fullBody ?? this.fullBody,
      prints: prints ?? this.prints,
      paintings: paintings ?? this.paintings,
    );
  }
}
