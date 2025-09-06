import 'package:flutter/material.dart';


abstract class ColorManagerBase
{
  /// [Transparent]
  Color get kTransparent;

  // Black Color Range
  /// [121212]
  Color get kBlack001;
  /// [1C1C1B]
  Color get kBlack002;

  // Grey Color Range
  /// [_595959]
  Color get kGrey001;
  /// [_707070]
  Color get kGrey002;
  /// [_959595]
  Color get kGrey003;

  // White Color Range
  /// [_FFFFFF]
  Color get kWhite001;

  // // Green Color Range
  // /// [_2AAE1D]
  // Color get kGreen001;

  // Orange Color Range
  /// [_F96802]
  Color get kOrange001;
  /// [_F36b01]
  Color get kOrange002;
  /// [_F96D00]
  Color get kOrange003;

  // // Yellow Color Range
  // /// [FFDE00]
  // Color get kYellow001;

  // // Red Color Range
  // /// [EB5757]
  // Color get kRed001;

  // // Blue Color Range
  // /// [_131F46]
  // Color get kBlue001;

}


abstract class GradientManagerBase {

  /* [Color(0xff9c4501), Color(0xff2D2D2D), 
    Color(0xff2D2D2D), Color(0xff161616),] */
  LinearGradient get kRole;

  /* [Color(0xff161616), Color(0xff2D2D2D), 
    Color(0xff2D2D2D), Color(0xff161616),] */
  LinearGradient get kLogo;
}