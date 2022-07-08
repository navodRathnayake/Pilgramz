import 'package:flutter/material.dart';
import 'package:pilgramz/Custom%20Widgets/Home/PilgramzAppBar.dart';
import 'package:pilgramz/Custom%20Widgets/Home/SearchBar.dart';
import 'package:pilgramz/Custom%20Widgets/VerticalSpace.dart';
import 'package:pilgramz/Pages/HomePageTab/Destinations.dart';
import 'package:pilgramz/Pages/HomePageTab/Events.dart';
import 'package:pilgramz/Pages/HomePageTab/Story.dart';

class MyHomePage extends StatefulWidget {
  final ThemeData themedata;
  const MyHomePage({Key? key, required this.themedata}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
                PilgramzAppBar(unit: padding, themedata: themedata),
                VerticalSpace(height: padding),
                SearchBar(themedata: themedata),
                VerticalSpace(height: padding),
                TabBar(
                  controller: _tabController,
                  tabs: const <Widget>[
                    Tab(
                      icon: Icon(Icons.filter_hdr),
                    ),
                    Tab(
                      icon: Icon(Icons.hiking),
                    ),
                    Tab(
                      icon: Icon(Icons.theater_comedy),
                    )
                  ],
                ),
                Expanded(
                    child: Container(
                  color: Colors.amber,
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      Destinations(),
                      Story(),
                      Events(),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
