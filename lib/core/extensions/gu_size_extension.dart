import 'package:flutter/material.dart';

/// Extending the BuildContext class with the GUSizeExtension class.
extension GUSizeExtension on BuildContext {
  /// A getter function that returns the size of the screen.
  Size get screenSize => MediaQuery.sizeOf(this);

  /// Getting the view insets of the screen.
  EdgeInsets get screenViewInsets => MediaQuery.viewInsetsOf(this);

  /// Getting the view padding of the screen.
  EdgeInsets get screenViewPadding => MediaQuery.viewPaddingOf(this);

  /// A getter function that returns the width of the screen.
  double get screenWidth => MediaQuery.sizeOf(this).width;

  /// A getter function that returns the height of the screen.
  double get screenHeight => MediaQuery.sizeOf(this).height;
}
