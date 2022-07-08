import 'package:flutter/material.dart';

class Destinations extends StatefulWidget {
  const Destinations({Key? key}) : super(key: key);

  @override
  State<Destinations> createState() => _DestinationsState();
}

class _DestinationsState extends State<Destinations> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text("Destinations"),
        ),
      ],
    );
  }
}
