import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


abstract class AppRadiuses
{
  AppRadiuses._();

  static final only = BorderOnly._();
  static final circular = BorderCircular._();
}

class BorderOnly
{
  BorderOnly._();

}


class BorderCircular
{
  BorderCircular._();

  /// [circular: 8.r]
  BorderRadius get hireMe => BorderRadius.circular(8.r);

  /// [circular: 12.r]
  BorderRadius get careerInfo => BorderRadius.circular(12.r);

  /// [circular: 16.r]
  BorderRadius get mainGreySpace => BorderRadius.circular(16.r);


}


abstract class AppBorderWidth
{
  AppBorderWidth._();

  /// [small: 2px]
  static double get xSmall => 2.0.w;
}