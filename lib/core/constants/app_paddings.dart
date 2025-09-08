import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/ui/responsive.dart';


abstract class AppPadding
{
  AppPadding._();
  static final all = All._();
  static final symmetric = Symmetric._();
  static final directional = Directional._();
  static final single = Single._();
  static final special = Special._();
}


class All
{
  All._();

  ///[all: 4]
  final EdgeInsets mainGreySpace = const EdgeInsets.all(4);

  ///[all: 5]
  final EdgeInsets socialMediaLinks = const EdgeInsets.all(5);
}


class Symmetric
{
  Symmetric._();

  ///[horizontal: 6px]
  EdgeInsets get careerInfo => EdgeInsets.symmetric(
    vertical: DeviceTypeHelper.instance.isMobile ? (7.5).w : 15.w,
    horizontal: DeviceTypeHelper.instance.isMobile ? (7.5).h : 15.h,
  );

}


class Directional
{
  Directional._();

  ///[25px] start
  EdgeInsetsDirectional get card => EdgeInsetsDirectional.only(start: 25.w,);
  ///[25px] start
  EdgeInsetsDirectional get bottomNavBar => EdgeInsetsDirectional.only(
    start: 27.w, end: 27.w, top: 15.h, bottom: 11.h);

}


class Single
{
  Single._();

  ///[30px] left
  EdgeInsets get largeLeft => EdgeInsets.only(left: 30.0.w);
}


class Special
{
  Special._();

  /// Zero padding
  final EdgeInsets zero = EdgeInsets.zero;
}
