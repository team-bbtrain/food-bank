import 'package:BabBBu/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum ButtonSize { medium, small }

enum ButtonState { defaultState, activated, sub }

class AppButton extends StatelessWidget {
  final String label;
  final ButtonSize size;
  final ButtonState state;
  final String? icon;
  final Color? iconColor;
  final VoidCallback? onPressed;

  const AppButton({
    super.key,
    required this.label,
    this.size = ButtonSize.medium,
    this.state = ButtonState.defaultState,
    this.icon,
    this.iconColor,
    this.onPressed,
  });

  static final Map<ButtonState, ButtonStyle> stateStylesMap = {
    ButtonState.defaultState: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(AppColors.line200),
      foregroundColor: WidgetStateProperty.all(AppColors.background50),
    ),
    ButtonState.activated: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(AppColors.primaryOrange500),
      foregroundColor: WidgetStateProperty.all(AppColors.background50),
    ),
    ButtonState.sub: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(AppColors.primaryOrange50),
      foregroundColor: WidgetStateProperty.all(AppColors.primaryOrange500),
    ),
  };

  static final Map<ButtonSize, ButtonStyle> sizeStylesMap = {
    ButtonSize.medium: ButtonStyle(
      fixedSize: WidgetStateProperty.all(Size(335.0, 56.0)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    ),
    ButtonSize.small: ButtonStyle(
      minimumSize: WidgetStateProperty.all(Size(0, 34.0)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
      padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(vertical: 7.0, horizontal: 16.0)),
    ),
  };

  ButtonStyle _getStyle() {
    final stateStyle =
        stateStylesMap[state] ?? stateStylesMap[ButtonState.defaultState]!;
    final sizeStyle = sizeStylesMap[size] ?? sizeStylesMap[ButtonSize.medium]!;

    return stateStyle.merge(sizeStyle);
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: _getStyle(),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            SvgPicture.asset(
              icon!,
              width: 24,
              height: 24,
              colorFilter: iconColor != null
                  ? ColorFilter.mode(iconColor!, BlendMode.srcIn)
                  : null,
            ),
            SizedBox(width: 10.0),
          ],
          Text(
            label,
          ),
        ],
      ),
    );
  }
}
