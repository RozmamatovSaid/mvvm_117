import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../utils/AppColors.dart';

class AppBarItem extends StatelessWidget implements PreferredSizeWidget {
  const AppBarItem({
    super.key,
    required this.back,
    required this.text,
    required this.svgfirst,
    required this.svgsecond,
  });

  final String back, text, svgfirst, svgsecond;

  @override
  Size get preferredSize => const Size(double.infinity, 41);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: AppColors.backgroundColor,
      leading: Container(
        child: IconButton(
          icon: SvgPicture.asset(
            back,
            width: 30,
            height: 18,
            fit: BoxFit.contain,
          ),
          onPressed: () => GoRouter.of(context).pop(),
        ),
      ),
      centerTitle: true,
      title: Text(
        text,
        style: TextStyle(
          color: AppColors.redPinkmain,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        Row(
          children: [
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColors.lightPink,
              ),
              child: Center(
                child: SvgPicture.asset(svgfirst),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColors.lightPink,
              ),
              child: Center(
                child: SvgPicture.asset(svgsecond),
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
      ],
    );
  }
}
