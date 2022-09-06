import 'package:flutter/material.dart';

class Environment extends StatefulWidget {
  const Environment({super.key});

  @override
  State<Environment> createState() => _EnvironmentState();
}

class _EnvironmentState extends State<Environment> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.85,
      minChildSize: 0.5,
      maxChildSize: 0.85,
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
            children: [],
          ),
        ),
      ),
    );
  }
}
