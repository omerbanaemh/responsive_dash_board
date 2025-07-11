import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader(
      {super.key, required this.image, this.imageBackground, this.imageColor});

  final String image;
  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: ShapeDecoration(
                color: imageBackground ?? const Color(0xFFFAFAFA),
                shape: const OvalBorder(),
              ),
              child: Center(
                child: SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(
                      imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                ),
              ),
            ),
          ),
        ),
  
       Flexible(
  child: FittedBox(
    child: Transform.rotate(
      angle: -1.57079633 * 2,
      child: Icon(
        Icons.arrow_back_ios_new_outlined,
        color: imageColor == null ? const Color(0xFF064061) : Colors.white,
      ),
    ),
  ),
),
      ],
    );
  }
}
