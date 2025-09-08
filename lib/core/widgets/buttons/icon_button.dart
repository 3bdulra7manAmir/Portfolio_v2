import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../constants/app_borders.dart';
import '../../constants/app_sizes.dart';
import '../../constants/app_styles.dart';


class CustomIconButton extends StatelessWidget
{
  const CustomIconButton({
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
    required this.icon,
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
  final Widget icon;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: margin, width: width, height: height,
      child: ElevatedButton.icon(
        style: ButtonStyle(
          padding: WidgetStateProperty.all<EdgeInsetsGeometry?>(padding),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
            borderRadius: borderRadius ?? AppRadiuses.circular.hireMe,
            side: BorderSide(width: borderWidth ?? (Sizes.s1).w, color: borderColor ?? AppColors.color.kTransparent)),),
          backgroundColor: WidgetStateProperty.all<Color>(backgroundColor ?? AppColors.color.kOrange003,),
        ),
        onPressed: onPressed,
        onLongPress: onLongPress,
        label: Text(text, style: textStyle ?? AppStyles.semiThin(fontColor: AppColors.color.kWhite001.withValues(alpha: 1)),),
        icon: icon,
      ),
    );
  }
}
