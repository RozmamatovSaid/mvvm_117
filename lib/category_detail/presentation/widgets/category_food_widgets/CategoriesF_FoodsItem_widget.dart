import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mvvm_117/utils/AppColors.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
    required this.time,
  });

  final String title, image, desc, time;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 168,
        height: 226,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: -10,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 153,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                    ),
                    border: Border(
                      left: BorderSide(color: AppColors.RedPinkMain),
                      right: BorderSide(color: AppColors.RedPinkMain),
                      bottom: BorderSide(color: AppColors.RedPinkMain),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              color: AppColors.TextsColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 12),
                        ),
                        Text(
                          desc,
                          maxLines: 2,
                          style: TextStyle(
                              color: AppColors.TextsColor,
                              fontWeight: FontWeight.w300,
                              fontSize: 13,
                          ),
                        ),
                        Row(
                          //asosiy
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "5",
                                  style: TextStyle(
                                      color: AppColors.RatingColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                                SizedBox(width: 4),
                                SvgPicture.asset("assets/svg/star.svg"),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset("assets/svg/clock.svg"),
                                SizedBox(width: 4),
                                Text(
                                  time,
                                  style: TextStyle(
                                      color: AppColors.RatingColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image(
                image: NetworkImage(image),
                width: 169,
                height: 153,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 7,
              right: 8,
              child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  color: AppColors.Pink,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: SvgPicture.asset("assets/svg/heart.svg"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
