import 'package:flutter/material.dart';
import 'package:pilgramz/Custom%20Widgets/VerticalSpace.dart';

class AboutPost extends StatefulWidget {
  const AboutPost({super.key});

  @override
  State<AboutPost> createState() => _AboutPostState();
}

class _AboutPostState extends State<AboutPost> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.85,
      minChildSize: 0.5,
      maxChildSize: 0.85,
      builder: (context, scrollController) => Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
