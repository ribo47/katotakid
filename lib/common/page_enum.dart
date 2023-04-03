enum PageEnum{
  actionFigure,
  head,
  clothing,
  total,
  menu
}

extension PageEnumExt on PageEnum{
  bool isTotal() => this == PageEnum.total;
  bool showActionFigure() => this == PageEnum.head || this == PageEnum.clothing;
  bool showHead() => this == PageEnum.actionFigure || this == PageEnum.clothing;
  bool showClothing() => this == PageEnum.head || this == PageEnum.actionFigure;
  bool isMenu() => this == PageEnum.menu;
}