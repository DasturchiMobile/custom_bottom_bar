import 'package:custom_bottom_bar/ui/bottom_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'class/bottom_bar_item.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key, required this.items});

  final List<BottomBarItem> items;

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ColoredBox(
        color: Color(0xFFffffff),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...widget.items.sublist(0, (widget.items.length / 2).round()).map(
                  (e) => BottomBarItemWidget(
                    imagePath: e.imagePath,
                    title: e.title,
                    textStyle: e.textStyle,
                  ),
                ),
            IconButton.outlined(onPressed: (){}, icon: Icon(Icons.add_box_sharp)),
            ...widget.items.sublist((widget.items.length / 2).round(), widget.items.length).map(
                  (e) => BottomBarItemWidget(
                imagePath: e.imagePath,
                title: e.title,
                textStyle: e.textStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
