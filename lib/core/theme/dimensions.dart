import 'package:flutter/material.dart';

///
/// Global grid spacer value
double kGridSpacer = 10.0;

///
/// This is the global dimensions class
///
/// which incudes manipulation of the sides
/// [left], [right], [top], [bottom]
/// [x] - left & right, [y] - top & bottom
/// [all] - left, right, top & bottom
class Dimension {
  /// The grid spacer value.
  final double spacerValue;
  late final DimensionSide _left;
  late final DimensionSide _top;
  late final DimensionSide _right;
  late final DimensionSide _bottom;
  late final DimensionSide _x;
  late final DimensionSide _y;
  late final DimensionSide _all;

  ///
  /// This injects the grid spacer value to [Dimensions]
  static final spacer = Dimension(kGridSpacer);

  /// > The constructor for the Dimension class takes a spacer value and sets the values of the
  /// DimensionSide objects for each side of the box
  ///
  /// Args:
  ///   : `spacerValue` - The value to use for all sides.
  Dimension(this.spacerValue) {
    _left = DimensionSide(spacerValue, SidesFlag(1, 0, 0, 0));
    _top = DimensionSide(spacerValue, SidesFlag(0, 1, 0, 0));
    _right = DimensionSide(spacerValue, SidesFlag(0, 0, 1, 0));
    _bottom = DimensionSide(spacerValue, SidesFlag(0, 0, 0, 1));
    _x = DimensionSide(spacerValue, SidesFlag(1, 0, 1, 0));
    _y = DimensionSide(spacerValue, SidesFlag(0, 1, 0, 1));
    _all = DimensionSide(spacerValue, SidesFlag(1, 1, 1, 1));
  }

  /// A getter.
  DimensionSide get left => _left;

  /// A getter.
  DimensionSide get top => _top;

  /// A getter.
  DimensionSide get right => _right;

  /// A getter.
  DimensionSide get bottom => _bottom;

  /// A getter.
  DimensionSide get x => _x;

  /// A getter.
  DimensionSide get y => _y;

  /// A getter.
  DimensionSide get all => _all;
}

///
/// This gets us the actual side and manipulate it according to the size
///
/// this gets to
/// [spacer] - grid spacer value,
/// [sidesFlag] - left, right, top & bottom (all 4)
class DimensionSide {
  /// The grid spacer value.
  double spacer;

  /// A class that sets the value of the sides.
  SidesFlag sidesFlag;

  /// Setting the value of the sides.
  /// Setting the value of the sides.
  DimensionSide(this.spacer, this.sidesFlag);

  /// This is a getter.
  EdgeInsets get none {
    return DimensionSize(spacer, sidesFlag, _Helper.none).data;
  }

  /// This is a getter.
  EdgeInsets get xxxs {
    return DimensionSize(spacer, sidesFlag, _Helper.xxxs).data;
  }

  /// This is a getter.
  EdgeInsets get xxs {
    return DimensionSize(spacer, sidesFlag, _Helper.xxs).data;
  }

  /// This is a getter.
  EdgeInsets get xs {
    return DimensionSize(spacer, sidesFlag, _Helper.xs).data;
  }

  /// This is a getter.
  EdgeInsets get sm {
    return DimensionSize(spacer, sidesFlag, _Helper.sm).data;
  }

  /// This is a getter.
  EdgeInsets get md {
    return DimensionSize(spacer, sidesFlag, _Helper.md).data;
  }

  /// This is a getter.
  EdgeInsets get lg {
    return DimensionSize(spacer, sidesFlag, _Helper.lg).data;
  }

  /// This is a getter.
  EdgeInsets get xl {
    return DimensionSize(spacer, sidesFlag, _Helper.xl).data;
  }

  /// This is a getter.
  EdgeInsets get xxl {
    return DimensionSize(spacer, sidesFlag, _Helper.xxl).data;
  }

  /// This is a getter.
  EdgeInsets get xxxl {
    return DimensionSize(spacer, sidesFlag, _Helper.xxxl).data;
  }
}

///
/// This actually does the calculation according to the spacer, sides & factor
///
/// this gets to
/// [spacer] - grid spacer value,
/// [sidesFlag] - left, right, top & bottom (all 4)
/// [factor] - none, xxs, xs, sm, md, lg, xl, xxl (Helper class)
class DimensionSize {
  /// The grid spacer value.
  double spacer;

  /// A class that sets the value of the sides.
  SidesFlag sidesFlag;

  /// A factor that is used to multiply the spacer value.
  double factor;

  /// A class that takes the spacer, sidesFlag and factor and returns the data.
  DimensionSize(this.spacer, this.sidesFlag, this.factor);

  /// This is a getter that returns the data.
  get data => EdgeInsets.fromLTRB(
        sidesFlag.leftFlag * spacer * factor,
        sidesFlag.topFlag * spacer * factor,
        sidesFlag.rightFlag * spacer * factor,
        sidesFlag.bottomFlag * spacer * factor,
      );
}

///
/// This sets the value of the sides
///
/// this includes:
/// [left], [right], [top] & [bottom]
class SidesFlag {
  /// Setting the value of the sides.
  double leftFlag = 0;

  /// Setting the value of the sides.
  double topFlag = 0;

  /// Setting the value of the sides.
  double rightFlag = 0;

  /// Setting the value of the sides.
  double bottomFlag = 0;

  /// Setting the value of the sides.
  SidesFlag(this.leftFlag, this.topFlag, this.rightFlag, this.bottomFlag);
}

///
/// This helps in getting the factor for each of the specification
///
/// this gets to
/// [none] - *0,
/// [xxxs] - *0.25,
/// [xxs] - *0.5,
/// [xs] - *0.75,
/// [sm] - *1,
/// [md] - *1.5,
/// [lg] - *2,
/// [xl] - *3,
/// [xxl] - *4
/// [xxxl] - *5
class _Helper {
  static double none = 0;
  static double xxxs = 0.25;
  static double xxs = 0.5;
  static double xs = 0.75;
  static double sm = 1;
  static double md = 1.5;
  static double lg = 2;
  static double xl = 3;
  static double xxl = 4;
  static double xxxl = 5;
}
