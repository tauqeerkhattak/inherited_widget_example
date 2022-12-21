import 'package:flutter/material.dart';
import 'package:inherited_widget_example/theme/mania_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ManiaTheme(
      mainColor: Colors.yellow,
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: ManiaTheme.of(context).mainColor,
            body: const Center(
              child: Text(
                'Background color is coming from InheritedWidget!',
              ),
            ),
          );
        },
      ),
    );
  }
}
