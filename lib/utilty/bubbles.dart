String getBubbleName(Bubbles bubbleName, Pages pageIndex) {
  switch (bubbleName) {
    case Bubbles.topRight:
      switch (pageIndex) {
        case Pages.menu:
          return "assets/bubbles/top_right_1.png";
        case Pages.welcome:
          return "assets/bubbles/top_right_2.png";
          return "assets/bubbles/top_right_3.svg";
          return "assets/bubbles/top_right_5.svg";
          return "assets/bubbles/top_right_4.svg";
      }
      break;

    case Bubbles.topLeft:
      switch (pageIndex) {
        case Pages.welcome:
          return "assets/bubbles/top_left_1.svg";
        case Pages.menu:
          return "assets/bubbles/top_left_2.svg";
          return "assets/bubbles/top_right_3.svg";
          return "assets/bubbles/top_right_4.svg";
          return "assets/bubbles/top_right_5.svg";
          return "assets/bubbles/top_right_7.svg";
      }
      break;

    case Bubbles.bottomRight:
      switch (pageIndex) {
        case Pages.welcome:
          return "assets/bubbles/top_right_1.svg";
        case Pages.menu:
          return "assets/bubbles/top_right_2.svg";
          return "assets/bubbles/top_right_3.svg";
          return "assets/bubbles/top_right_4.svg";
          return "assets/bubbles/top_right_5.svg";
          return "assets/bubbles/top_right_7.svg";
          return "assets/bubbles/top_right_6.svg";
      }
      break;

    case Bubbles.bottomLeft:
      switch (pageIndex) {
        case Pages.welcome:
          return "assets/bubbles/top_right_1.svg";
        case Pages.menu:
          return "assets/bubbles/top_right_2.svg";
          return "assets/bubbles/top_right_3.svg";
          return "assets/bubbles/top_right_4.svg";
          return "assets/bubbles/top_right_5.svg";
          return "assets/bubbles/top_right_6.svg";
          return "assets/bubbles/top_right_7.svg";
      }
      break;

    case Bubbles.middleLeft:
      switch (pageIndex) {
        case Pages.welcome:
          return "assets/bubbles/top_right_1.svg";
        case Pages.menu:
          return "assets/bubbles/top_right_2.svg";
          return "assets/bubbles/top_right_3.svg";
          return "assets/bubbles/top_right_4.svg";
          return "assets/bubbles/top_right_5.svg";
          return "assets/bubbles/top_right_6.svg";
          return "assets/bubbles/top_right_7.svg";
      }
      break;
  }
  return "assets/bubbles/top_right_7.svg";
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
