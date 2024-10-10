import 'package:BabBBu/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum AppChipSize {
  medium,
  large,
}

class AppChipProperties {
  final double fontSize;
  final double chipHeight;
  final double iconSize;

  const AppChipProperties({
    required this.fontSize,
    required this.chipHeight,
    required this.iconSize,
  });

  static AppChipProperties properties(AppChipSize size) {
    switch (size) {
      case AppChipSize.medium:
        return const AppChipProperties(
            fontSize: 12, chipHeight: 40, iconSize: 20);
      case AppChipSize.large:
        return const AppChipProperties(
            fontSize: 13, chipHeight: 44, iconSize: 24);
    }
  }
}

class AppChip extends StatefulWidget {
  final String text;
  final AppChipSize size;
  final String? leftIcon, rightIcon;

  const AppChip({
    super.key,
    required this.text,
    required this.size,
    this.leftIcon,
    this.rightIcon,
  });

  @override
  State<AppChip> createState() => _AppChipState();
}

class _AppChipState extends State<AppChip> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    final properties = AppChipProperties.properties(widget.size);

    return SizedBox(
      height: properties.chipHeight,
      child: ActionChip(
        onPressed: () {
          setState(() {
            isActive = !isActive;
          });
        },
        backgroundColor:
            isActive ? AppColors.primaryOrange500 : AppColors.line50,
        label: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.leftIcon != null) ...[
              SvgPicture.asset(
                widget.leftIcon!,
                width: properties.iconSize,
                height: properties.iconSize,
                colorFilter: ColorFilter.mode(
                  isActive ? AppColors.white : AppColors.secondaryBlue600,
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(width: 4)
            ],
            Text(
              widget.text,
              style: TextStyle(
                  fontSize: properties.fontSize,
                  // TODO: 폰트
                  color:
                      isActive ? AppColors.white : AppColors.secondaryBlue600),
            ),
            if (widget.rightIcon != null) ...[
              SizedBox(width: 4),
              SvgPicture.asset(
                widget.rightIcon!,
                width: properties.iconSize,
                height: properties.iconSize,
                colorFilter: ColorFilter.mode(
                  isActive ? AppColors.white : AppColors.secondaryBlue600,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
