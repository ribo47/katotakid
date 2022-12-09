String getBubbleName(Bubbles bubbleName, Pages pageIndex) {
  switch (bubbleName) {
    case Bubbles.topRight:
      switch (pageIndex) {
        case Pages.menu:
          return "assets/bubbles/top_right_1.png";
        case Pages.welcome:
          return "assets/bubbles/top_right_2.png";
        case Pages.actionFigure:
          return "assets/bubbles/top_right_3.png";
        case Pages.head:
          return "assets/bubbles/top_right_4.png";
        case Pages.clothing:
          return "assets/bubbles/top_right_5.png";
        case Pages.total:
          return "assets/bubbles/top_right_6.png";
        case Pages.thanks:
          return "assets/bubbles/top_right_7.png";
      }

    case Bubbles.topLeft:
      switch (pageIndex) {
        case Pages.menu:
          return "assets/bubbles/top_left_1.png";
        case Pages.welcome:
          return "assets/bubbles/top_left_2.png";
        case Pages.actionFigure:
          return "assets/bubbles/top_left_3.png";
        case Pages.head:
          return "assets/bubbles/top_left_4.png";
        case Pages.clothing:
          return "assets/bubbles/top_left_5.png";
        case Pages.total:
          return "assets/bubbles/top_left_6.png";
        case Pages.thanks:
          return "assets/bubbles/top_left_7.png";
      }

    case Bubbles.bottomRight:
      switch (pageIndex) {
        case Pages.menu:
          return "assets/bubbles/bottom_right_1.png";
        case Pages.welcome:
          return "assets/bubbles/bottom_right_2.png";
        case Pages.actionFigure:
          return "assets/bubbles/bottom_right_3.png";
        case Pages.head:
          return "assets/bubbles/bottom_right_4.png";
        case Pages.clothing:
          return "assets/bubbles/bottom_right_5.png";
        case Pages.total:
          return "assets/bubbles/bottom_right_6.png";
        case Pages.thanks:
          return "assets/bubbles/bottom_right_7.png";
      }

    case Bubbles.bottomLeft:
      switch (pageIndex) {
        case Pages.menu:
          return "assets/bubbles/bottom_left_1.png";
        case Pages.welcome:
          return "assets/bubbles/bottom_left_2.png";
        case Pages.actionFigure:
          return "assets/bubbles/bottom_left_3.png";
        case Pages.head:
          return "assets/bubbles/bottom_left_4.png";
        case Pages.clothing:
          return "assets/bubbles/bottom_left_5.png";
        case Pages.total:
          return "assets/bubbles/bottom_left_6.png";
        case Pages.thanks:
          return "assets/bubbles/bottom_left_7.png";
      }
      break;

    case Bubbles.middleLeft:
      switch (pageIndex) {
        case Pages.menu:
          return "assets/bubbles/middle_left_1.png";
        case Pages.welcome:
          return "assets/bubbles/middle_left_2.png";
        case Pages.actionFigure:
          return "assets/bubbles/middle_left_3.png";
        case Pages.head:
          return "assets/bubbles/middle_left_4.png";
        case Pages.clothing:
          return "assets/bubbles/middle_left_5.png";
        case Pages.total:
          return "assets/bubbles/middle_left_6.png";
        case Pages.thanks:
          return "assets/bubbles/middle_left_7.png";
      }
  }
}

enum Bubbles {
  topRight,
  topLeft,
  bottomRight,
  bottomLeft,
  middleLeft,
}

enum Pages {
  welcome,
  menu,
  actionFigure,
  head,
  clothing,
  total,
  thanks,
}
