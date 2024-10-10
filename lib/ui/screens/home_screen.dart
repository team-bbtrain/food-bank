import 'package:BabBBu/ui/assets/assets.dart';
import 'package:BabBBu/ui/widgets/common/chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../theme/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 칩 사용법
            AppChip(
              text: '아침이에요!',
              size: AppChipSize.large,
              leftIcon: AppAssets.icons.alarmClock,
            ),
            // 이미지 사용법
            // 2x, 3x 이미지는 준비만 해두면 플러터가 자동으로 디바이스의 해상도에 맞는 이미지를 사용
            Image.asset(
              AppAssets.images.logo,
            ),
            Image.asset(
              AppAssets.images.character,
              width: 200,
            ),
            // ⭐️ 아이콘 사용법
            // 크기 조절
            SvgPicture.asset(
              AppAssets.icons.handEmoji,
              width: 50,
              height: 50,
            ),
            SvgPicture.asset(
              AppAssets.icons.arrowLine,
            ),
            // 색상 변경
            SvgPicture.asset(
              AppAssets.icons.arrowLine,
              colorFilter: ColorFilter.mode(
                Colors.red,
                BlendMode.srcIn,
              ),
            ),
            // 회전
            Transform.rotate(
              angle: 3.14,
              child: SvgPicture.asset(
                AppAssets.icons.arrowLine,
              ),
            ),
            Text(
              'It is a title',
              style: textTheme.titleLarge!.copyWith(
                color: AppColors.primaryOrange600,
              ),
            ),
            Text(
              'Welcome to Home Screen!',
              style: textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
