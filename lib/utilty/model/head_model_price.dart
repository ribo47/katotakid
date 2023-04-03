class HeadModelPrice {
  final double fullBody;
  final double prints;
  final double paintings;

  HeadModelPrice({
    required this.fullBody,
    required this.prints,
    required this.paintings,
  });

  HeadModelPrice copyWith({
    double? fullBody,
    double? prints,
    double? paintings,
  }) {
    return HeadModelPrice(
      fullBody: fullBody ?? this.fullBody,
      prints: prints ?? this.prints,
      paintings: paintings ?? this.paintings,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'fullBody': this.fullBody,
      'prints': this.prints,
      'paintings': this.paintings,
    };
  }

  factory HeadModelPrice.fromMap(Map<String, dynamic> map) {
    return HeadModelPrice(
      fullBody: map['head_fullBody'] as double,
      prints: map['head_prints'] as double,
      paintings: map['head_paintings'] as double,
    );
  }
}
