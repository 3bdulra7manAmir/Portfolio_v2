import 'package:flutter/material.dart';
import 'color_manager_base.dart';


class DarkColorScheme extends ColorManagerBase
{
  @override
  /// [Transparent]
  Color get kTransparent => Colors.transparent;

  // Black Color Range
  @override
  /// [121212]
  Color get kBlack001 => const Color(0xff121212);
  @override
  /// [1C1C1B]
  Color get kBlack002 => const Color(0xff1C1C1B);
  @override
  /// [1B1611]
  Color get kBlack003 => const Color(0xff1B1611);
  @override
  /// [_1D1C1B]
  Color get kBlack004 => const Color(0xff1D1C1B);
  @override
  /// [_1B1B1B]
  Color get kBlack005 => const Color(0xff1B1B1B);

  // Grey Color Range
  @override
  /// [_595959]
  Color get kGrey001 => const Color(0xff959595);
  @override
  /// [_707070]
  Color get kGrey002 => const Color(0xff707070);
  @override
  /// [_959595]
  Color get kGrey003 => const Color(0xff959595);
  @override
  /// [_939393]
  Color get kGrey004 => const Color(0xff939393);
  @override
  /// [_444444]
  Color get kGrey005 => const Color(0xff444444);

  
  // White Color Range
  @override
  /// [_FFFFFF]
  Color get kWhite001 => const Color(0xffFFFFFF).withValues(alpha: 0.7);
  
  // // Green Color Range
  // @override
  // /// [_2AAE1D]
  // Color get kGreen001 => const Color(0xff2AAE1D);

  // Orange Color Range
  @override
  /// [_F96802]
  Color get kOrange001 => const Color(0xffF96802);
  @override
  /// [_F36B01]
  Color get kOrange002 => const Color(0xffF36B01);
  @override
  /// [_F96D00]
  Color get kOrange003 => const Color(0xffF96D00);

  // // Yellow Color Range
  // /// [FFDE00]
  // @override
  // Color get kYellow001 => const Color(0xFFF3E3A4);
  
  // // Red Color Range
  // /// [EB5757]
  // @override
  // Color get kRed001 => const Color(0xFFEB5757);

  // // Blue Color Range
  // /// [_131F46]
  // @override
  // Color get kBlue001 => const Color(0xFF131F46);
}


class DarkGradients extends GradientManagerBase {
  @override
  LinearGradient get kRole => const LinearGradient(
    colors: [
      Color(0xff9C4501),
      Color(0xffC55700),
      Color(0xffDA6001),
      Color(0xfff76C00),
      Color(0xfff36B00),
      Color(0xffE46401),
      Color(0xffCF5B00),
      Color(0xffCA5900),
    ],
  );

  @override
  LinearGradient get kLogo => const LinearGradient(
    colors: [
      Color(0xfff96802),
      Color(0xff8F400A),
      Color(0xfff5520A),
      Color(0xffA0390D),
      Color(0xffEF3513),
      Color(0xffEC231A),
      Color(0xffE9171E),
      Color(0xffE80D21),
      Color(0xffE70624),
    ],
  );
}