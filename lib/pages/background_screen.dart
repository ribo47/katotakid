import 'package:flutter/material.dart';

import '../utilty/theme.dart';

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KKTheme().globalTheme.backgroundColor,
      body: const Center(child: Text('ciao')),
    );
  }
}
