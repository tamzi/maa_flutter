import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:maa_flutter/ui/designsystem/theme.dart';

/// This creates a default buttons that can be usd all across the app

class CTButtonGrey extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  CTButtonGrey({
    required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the CTThemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = CTTheme.of(context);
    return _ButtonBuilder(
      color: themeData.gray,
      textColor: themeData.black,
      splashColor: themeData.deepGray,
      label: label,
      onPressed: onPressed,
    ).build();
  }
}

class CTButtonBlack extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  CTButtonBlack({
    required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the JFthemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = CTTheme.of(context);
    return _ButtonBuilder(
      color: themeData.black,
      textColor: themeData.white,
      splashColor: themeData.white,
      label: label,
      onPressed: onPressed,
    ).build();
  }
}

class CTButtonRed extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  CTButtonRed({
    required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the JFthemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = CTTheme.of(context);
    return _ButtonBuilder(
      color: themeData.warmRed,
      textColor: themeData.white,
      splashColor: themeData.white,
      label: this.label,
      onPressed: this.onPressed,
    ).build();
  }
}

/// This is a button builder that will be used to build the
/// various properties we need for the buttons that will be created.
class _ButtonBuilder {
  final Color? color;
  final Color? textColor;
  final Color? splashColor;
  final double elevation;
  final String label;
  final VoidCallback? onPressed;
  final double borderRadius;
  final double buttonWidth;

  _ButtonBuilder(
      {required this.color,
      required this.textColor,
      required this.splashColor,
      required this.label,
      required this.onPressed,
      this.buttonWidth = double.infinity,
      this.elevation = 3.0,
      this.borderRadius = 13.0});

  RaisedButton build() {
    return RaisedButton(

        onPressed: onPressed,
        color: color,
        textColor: textColor,
        splashColor: splashColor,
        elevation: elevation,
        padding: const EdgeInsets.only(top: 17.0, bottom: 17.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Text(label));
  }
}
