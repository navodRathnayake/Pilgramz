import 'package:flutter/material.dart';
import 'package:pilgramz/Utils/Theme%20Data.dart';

class Subtitles extends StatelessWidget {
  final ThemeData themedata;
  final String leadingText;
  final String tailText;
  const Subtitles(
      {Key? key,
      required this.leadingText,
      required this.tailText,
      required this.themedata})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(leadingText, style: themedata.textTheme.headline1),
          TextButton(
            onPressed: () {},
            child: Container(
              child: Row(
                children: [
                  Text(
                    tailText,
                    style: themedata.textTheme.subtitle1,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: COLOR_GREY_CANVAS,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
