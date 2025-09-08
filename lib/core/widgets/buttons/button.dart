import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../constants/app_borders.dart';
import '../../constants/app_margins.dart';
import '../../constants/app_paddings.dart';
import '../../constants/app_sizes.dart';
import '../../constants/app_styles.dart';
import '../../utils/logger/app_logger.dart';
import '../../utils/ui/responsive.dart';


class CustomButton extends StatelessWidget
{
  const CustomButton({
    super.key,
    this.margin,
    this.width,
    this.height,
    this.padding,
    this.borderRadius,
    this.borderWidth,
    this.borderColor,
    this.backgroundColor,
    required this.onPressed,
    this.onLongPress,
    required this.text,
    this.textStyle,
  });

  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final double? borderWidth;
  final Color? borderColor;
  final Color? backgroundColor;
  final void Function()? onPressed;
  final void Function()? onLongPress;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: margin ?? AppMargins.special.zero, 
      padding: AppPadding.special.zero,
      width: DeviceTypeHelper.instance.isMobile ? 160.w : width,
      height: DeviceTypeHelper.instance.isMobile ? 20.h : height,
      child: ElevatedButton(
        style: ButtonStyle(
          padding: WidgetStateProperty.all<EdgeInsetsGeometry?>(padding),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
            borderRadius: borderRadius ?? AppRadiuses.circular.hireMe,
            side: BorderSide(width: borderWidth ?? (Sizes.s1).w, color: borderColor ?? AppColors.color.kTransparent)),),
          backgroundColor: WidgetStateProperty.all<Color>(backgroundColor ?? AppColors.color.kOrange003,),
        ),
        onPressed: onPressed,
        onLongPress: onLongPress,
        child: Text(text, style: textStyle ?? AppStyles.semiThin(fontColor: AppColors.color.kWhite001.withValues(alpha: 1)),),
      ),
    );
  }
}
