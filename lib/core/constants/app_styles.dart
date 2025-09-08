import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/theme/color_manager/colors.dart';
import '../../config/theme/font_manager/font_sizes.dart';
import '../../config/theme/font_manager/font_weights.dart';
import '../../config/theme/font_manager/fonts.dart';
import '../utils/ui/responsive.dart';

abstract class AppStyles
{
  AppStyles._();

  /// Size= [24] Weight= [w400], Color= [_FFFFFF],
  static TextStyle black({
    double? fontSize,
    FontWeight? fontWeight,
    Color? fontColor,
    String? fontFamily,
    TextDecoration? textDecoration,
    Color? textDecorationColor,
    TextOverflow? textOverflow,
  })
  {
    return TextStyle(
      fontSize: fontSize ?? (DeviceTypeHelper.instance.isMobile ? AppFontSizes.xXsmall.sp : AppFontSizes.xXLarge.sp),
      fontWeight: fontWeight ?? AppFontWeights.regularWeight,
      color: fontColor ?? AppColors.color.kWhite001,
      fontFamily: fontFamily ?? AppFonts.font.fontName,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

  /// Size= [22] Weight= [w400], Color= [_FFFFFF],
  static TextStyle extraBold({
    double? fontSize,
    FontWeight? fontWeight,
    Color? fontColor,
    String? fontFamily,
    TextDecoration? textDecoration,
    Color? textDecorationColor,
    TextOverflow? textOverflow,
  })
  {
    return TextStyle(
      fontSize: fontSize ?? (DeviceTypeHelper.instance.isMobile ? AppFontSizes.xXXsmall.sp : AppFontSizes.xLarge.sp),
      fontWeight: fontWeight ?? AppFontWeights.regularWeight,
      color: fontColor ?? AppColors.color.kWhite001,
      fontFamily: fontFamily ?? AppFonts.font.fontName,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

  /// Size= [20] Weight= [w700], Color= [_FFFFFF],
  static TextStyle bold({
    double? fontSize,
    FontWeight? fontWeight,
    Color? fontColor,
    String? fontFamily,
    TextDecoration? textDecoration,
    Color? textDecorationColor,
    TextOverflow? textOverflow,
  })
  {
    return TextStyle(
      fontSize: fontSize ?? (DeviceTypeHelper.instance.isMobile ? AppFontSizes.xXXXsmall.sp : AppFontSizes.large.sp),
      fontWeight: fontWeight ?? AppFontWeights.boldWeight,
      color: fontColor ?? AppColors.color.kWhite001,
      fontFamily: fontFamily ?? AppFonts.font.fontName,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

  /// Size= [18] Weight= [w400], Color= [_FFFFFF],
  static TextStyle semiBold({
    double? fontSize,
    FontWeight? fontWeight,
    Color? fontColor,
    String? fontFamily,
    TextDecoration? textDecoration,
    Color? textDecorationColor,
    TextOverflow? textOverflow,
  })
  {
    return TextStyle(
      fontSize: fontSize ?? (DeviceTypeHelper.instance.isMobile ? AppFontSizes.xXXXXsmall.sp : AppFontSizes.xMeduim.sp),
      fontWeight: fontWeight ?? AppFontWeights.regularWeight,
      color: fontColor ?? AppColors.color.kWhite001,
      fontFamily: fontFamily ?? AppFonts.font.fontName,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

  /// Size= [16] Weight= [w400], Color= [_FFFFFF],
  static TextStyle thin({
    double? fontSize,
    FontWeight? fontWeight,
    Color? fontColor,
    String? fontFamily,
    TextDecoration? textDecoration,
    Color? textDecorationColor,
    TextOverflow? textOverflow,
  })
  {
    return TextStyle(
      fontSize: fontSize ?? (DeviceTypeHelper.instance.isMobile ? AppFontSizes.xXXXXXsmall.sp : AppFontSizes.meduim.sp),
      fontWeight: fontWeight ?? AppFontWeights.regularWeight,
      color: fontColor ?? AppColors.color.kWhite001,
      fontFamily: fontFamily ?? AppFonts.font.fontName,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

  /// Size= [14] Weight= [w400], Color= [_707070],
  static TextStyle semiThin({
    double? fontSize,
    FontWeight? fontWeight,
    Color? fontColor,
    String? fontFamily,
    TextDecoration? textDecoration,
    Color? textDecorationColor,
    TextOverflow? textOverflow,
  })
  {
    return TextStyle(
      fontSize: fontSize ?? (DeviceTypeHelper.instance.isMobile ? AppFontSizes.xXXXXXXsmall.sp : AppFontSizes.xSmall.sp),
      fontWeight: fontWeight ?? AppFontWeights.regularWeight,
      color: fontColor ?? AppColors.color.kGrey002,
      fontFamily: fontFamily ?? AppFonts.font.fontName,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

}
