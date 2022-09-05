import 'package:flutter/material.dart';

import '../HorizontalSpace.dart';
import '../VerticalSpace.dart';

class DestinationSheet extends StatefulWidget {
  final ThemeData themedata;
  const DestinationSheet({super.key, required this.themedata});

  @override
  State<DestinationSheet> createState() => _DestinationSheetState();
}

class _DestinationSheetState extends State<DestinationSheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.85,
      minChildSize: 0.5,
      maxChildSize: 0.85,
      builder: (context, scrollController) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
        ),
        child: Padding(
            padding: EdgeInsets.only(left: 18, right: 18),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Transform.rotate(
                      angle: 3.1,
                      child: Icon(Icons.format_quote),
                    ),
                  ],
                ),
                Row(
                  children: [
                    HorizontalSpace(width: 12),
                    Expanded(
                      child: Text(
                        'Ultimate Sri Lanka Street Food Tour In Colombo With The Kindest Vendors',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: widget.themedata.textTheme.headline4,
                      ),
                    ),
                  ],
                ),
                VerticalSpace(height: 10),
                const Divider(),
                VerticalSpace(height: 10)
              ],
            )),
      ),
    );
  }
}
