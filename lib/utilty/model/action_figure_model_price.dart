class ActionFigureModelPrice {
  final double fullBody;
  final double prints;
  final double paintings;

  ActionFigureModelPrice({
    required this.fullBody,
    required this.prints,
    required this.paintings,
  });

  ActionFigureModelPrice copyWith({
    double? fullBody,
    double? prints,
    double? paintings,
  }) {
    return ActionFigureModelPrice(
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

  factory ActionFigureModelPrice.fromMap(Map<String, dynamic> map) {
    return ActionFigureModelPrice(
      fullBody: map['actionFigure_fullBody'] as double,
      prints: map['actionFigure_prints'] as double,
      paintings: map['actionFigure_paintings'] as double,
    );
  }
}
