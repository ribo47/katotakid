enum PageEnum{
  actionFigure,
  head,
  clothing,
  total,
  menu
}

extension PageEnumExt on PageEnum{
  bool isTotal() => this == PageEnum.total;
  bool showActionFigure() => this == PageEnum.head || this == PageEnum.clothing || this == PageEnum.total;
  bool showHead() => this == PageEnum.actionFigure || this == PageEnum.clothing || this == PageEnum.total;
  bool showClothing() => this == PageEnum.head || this == PageEnum.actionFigure || this == PageEnum.total;
  bool isMenu() => this == PageEnum.menu;
}