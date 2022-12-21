import 'package:flutter/widgets.dart';

class ManiaTheme extends InheritedWidget {
  final Color mainColor;

  const ManiaTheme({
    super.key,
    required this.mainColor,
    required super.child,
  });

  static ManiaTheme? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ManiaTheme>();
  }

  static ManiaTheme of(BuildContext context) {
    final ManiaTheme? maniaTheme = maybeOf(context);
    assert(maniaTheme != null, 'No ManiaTheme Found!');
    return maniaTheme!;
  }

  @override
  bool updateShouldNotify(ManiaTheme oldWidget) {
    return mainColor != oldWidget.mainColor;
  }
}
