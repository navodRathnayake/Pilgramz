import 'package:flutter/material.dart';
import 'package:pilgramz/Utils/Theme%20Data.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themedata = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    final double padding = (size.width) / 20;
    return Container(
      decoration: BoxDecoration(
          color: themedata.secondaryHeaderColor,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: padding,
        ),
        child: Center(
          child: TextField(
              autofocus: false,
              decoration: InputDecoration(
                filled: false,
                alignLabelWithHint: true,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                border: InputBorder.none,
                fillColor: themedata.secondaryHeaderColor,
                hintStyle: themedata.textTheme.headline3,
                hintText: "Search Your Destinations",
                prefixStyle: themedata.textTheme.bodyText2,
              ),
              cursorColor: Colors.transparent),
        ),
      ),
    );
  }
}
