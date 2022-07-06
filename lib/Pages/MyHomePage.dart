import 'package:flutter/material.dart';
import 'package:pilgramz/Custom%20Widgets/Home/PilgramzAppBar.dart';
import 'package:pilgramz/Custom%20Widgets/Home/SearchBar.dart';
import 'package:pilgramz/Custom%20Widgets/Home/Subtitles.dart';
import 'package:pilgramz/Custom%20Widgets/VerticalSpace.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themedata = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    final double padding = (size.width) / 20;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Column(
              children: [
                VerticalSpace(height: padding),
                PilgramzAppBar(unit: padding),
                VerticalSpace(height: padding),
                const SearchBar(),
                VerticalSpace(height: padding),
                Subtitles(leadingText: "News & Events", tailText: "See All")
              ],
            ),
          ),
        ),
      ),
    );
  }
}