import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBarItemWidget extends StatelessWidget {
  const BottomBarItemWidget({super.key, required this.imagePath, required this.title, this.textStyle});
  final String imagePath;
  final String title;
  final TextStyle? textStyle;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
            imagePath,
            errorBuilder: (context, _, __){
              return SvgPicture.asset(
                  imagePath,
                  errorBuilder: (context, _, __){
                    return Icon(Icons.question_mark);
                  },
              );
            },
        ),
        SizedBox(height: 4),
        Text(title, style: textStyle?? TextStyle(fontSize: 12, fontFamily: "Sora"),),
      ],
    );
  }
}
