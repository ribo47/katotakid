class ActionFigureModel {
  final int fullBody;
  final int prints;
  final int paintings;

  ActionFigureModel({
    required this.fullBody,
    required this.prints,
    required this.paintings,
  });

  ActionFigureModel copyWith({
    int? fullBody,
    int? prints,
    int? paintings,
  }) {
    return ActionFigureModel(
      fullBody: fullBody ?? this.fullBody,
      prints: prints ?? this.prints,
      paintings: paintings ?? this.paintings,
    );
  }
}
