import 'package:flutter/material.dart';
import 'package:pilgramz/Custom%20Widgets/Home/PostWdget.dart';
import 'package:pilgramz/Custom%20Widgets/Home/Subtitles.dart';
import 'package:pilgramz/Custom%20Widgets/VerticalSpace.dart';
import 'package:pilgramz/Utils/jason.dart';

class Destinations extends StatefulWidget {
  final double padding;
  final ThemeData themedata;
  final double width;
  Destinations(
      {Key? key,
      required this.padding,
      required this.themedata,
      required this.width})
      : super(key: key);

  @override
  State<Destinations> createState() => _DestinationsState();
}

class _DestinationsState extends State<Destinations> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: widget.padding),
        child: Column(
          children: [
            //VerticalSpace(height: widget.padding),
            //DestinationsSubTitle(themedata: widget.themedata),
            //Divider(),
            VerticalSpace(height: widget.padding),
            PostWidget(
              width: widget.width,
              padding: widget.padding,
              themedata: widget.themedata,
              imgUrl: postData['imgUrl'],
              postTitle: postData['title'],
              likes: postData['likes'],
              comments: postData['comments'],
              attachments: postData['attachments'],
            )
          ],
        ),
      ),
    );
  }
}
