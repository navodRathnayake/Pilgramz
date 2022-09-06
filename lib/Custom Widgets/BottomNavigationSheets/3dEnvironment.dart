import 'package:flutter/material.dart';
import 'package:pilgramz/Custom%20Widgets/HorizontalSpace.dart';
import 'package:pilgramz/Custom%20Widgets/VerticalSpace.dart';

class Environment extends StatefulWidget {
  final ThemeData themedata;
  const Environment({super.key, required this.themedata});

  @override
  State<Environment> createState() => _EnvironmentState();
}

class _EnvironmentState extends State<Environment> {
  @override
  bool isOpen = true;
  int count = 0;
  double bottomSheetHeight = 0.85;
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: bottomSheetHeight,
      minChildSize: 0.5,
      maxChildSize: bottomSheetHeight,
      builder: (context, scrollController) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 18.0, right: 18.0),
          child: ListView(
            controller: scrollController,
            children: [
              VerticalSpace(height: 10),
              Center(
                child: Container(
                  width: 50,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Row(
                children: [
                  Transform.rotate(
                    angle: 3.1,
                    child: Icon(Icons.format_quote),
                  ),
                  HorizontalSpace(width: 10),
                  Expanded(
                    child: Text(
                      'Eiffel Tower 3D Environment',
                      style: widget.themedata.textTheme.headline3,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  FloatingActionButton.small(
                    child: isOpen
                        ? Icon(Icons.keyboard_arrow_up)
                        : Icon(Icons.keyboard_arrow_down),
                    onPressed: () {
                      setState(() {
                        isOpen = !isOpen;
                        if (isOpen == false) {
                          bottomSheetHeight = 1;
                        }
                        if (isOpen == true && count == 1) {
                          Navigator.pop(context);
                        }
                        count++;
                      });
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
