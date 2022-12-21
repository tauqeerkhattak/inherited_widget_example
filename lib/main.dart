import 'package:flutter/material.dart';
import 'package:inherited_widget_example/theme/mania_theme.dart';

import 'ui/home/home_page.dart';

void main() {
  runApp(const InheritedWidgetExample());
}

class InheritedWidgetExample extends StatelessWidget {
  const InheritedWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const ManiaTheme(
      mainColor: Colors.pink,
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
