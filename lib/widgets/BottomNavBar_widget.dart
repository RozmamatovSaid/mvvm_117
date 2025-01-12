import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../utils/AppColors.dart';

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({
    super.key,
    required this.FirstSvg,
    required this.SecondSvg,
    required this.ThirdSvg,
    required this.FourthSvg,
  });

  final FirstSvg, SecondSvg, ThirdSvg, FourthSvg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 281,
          height: 56,
          decoration: BoxDecoration(
            color: AppColors.redPinkmain,
            borderRadius: BorderRadius.circular(33),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: SvgPicture.asset(FirstSvg),
                onPressed: () {
                  context.go("/");
                },
              ),
              SvgPicture.asset(SecondSvg),
              SvgPicture.asset(ThirdSvg),
              SvgPicture.asset(FourthSvg),
            ],
          ),
        ),
      ),
    );
  }
}
