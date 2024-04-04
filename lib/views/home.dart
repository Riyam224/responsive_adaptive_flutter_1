// ignore_for_file: prefer_const_constructors, dead_code

import 'package:flutter/material.dart';
import 'package:project1/views/widgets/custom_drawer.dart';
import 'package:project1/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: Color(0xffb4b4b4),
      // todo
      appBar: BuildAppBar(context),
      body: HomeViewBody(),
    );
  }

  AppBar? BuildAppBar(BuildContext context) {
    // print("media query width =  ${MediaQuery.sizeOf(context).width}");
    return MediaQuery.sizeOf(context).width - 32 < 900
        ? AppBar(
            backgroundColor: Colors.black,
            leading: GestureDetector(
              onTap: () {
                // scaffoldKey.currentState!.openDrawer();
              },
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          )
        : null;
  }
}
