import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/theme/color_manager/colors.dart';
import '../constants/app_borders.dart';
import '../constants/app_sizes.dart';


class CustomDivider1 extends StatelessWidget
{
  const CustomDivider1({super.key, this.color, this.thickness, this.indent, this.endIndent});

  final Color? color;
  final double? thickness;
  final double? indent;
  final double? endIndent;

  @override
  Widget build(BuildContext context)
  {
    return Divider(
      color: color ?? AppColors.color.kWhite001, //HERE
      thickness: thickness ?? (Sizes.s1).h,
      indent: indent,
      endIndent: endIndent,
    );
  }
}


class CustomDivider2 extends StatelessWidget
{
  const CustomDivider2({super.key, this.width, this.height, this.color, this.borderRadius});

  final double? width;
  final double? height;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: width ?? 2.w,
      height: height ?? 60.h,
      decoration: BoxDecoration(
        color: color ?? AppColors.color.kGrey005,
        borderRadius: borderRadius ?? AppRadiuses.circular.hireMe,
      ),
    );
  }
}

