// Flutter imports:
import 'package:flutter/material.dart';


import '../../../globals.dart';
import '../../widgets/app_bars/core_app_bar.dart';
import '../../widgets/bottom_nav_bar/core_bottom_nav_bar.dart';

class CoreScaffold extends StatelessWidget {
  final Widget body;
  final AppBar? appBar;
  final BottomNavigationBar? bottomNavBar;

  const CoreScaffold(
      {required this.body,
      this.appBar,
      this.bottomNavBar,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key ?? GlobalKey<ScaffoldState>(),
      appBar: PreferredSize(
              preferredSize: Size.fromHeight(deviceType.getMenuHeight()),
              child: SizedBox(
                  height: deviceType.getMenuHeight(),
                  child: appBar ?? const CoreAppBar())),
      resizeToAvoidBottomInset: true,
      body: SafeArea(child: body),
      bottomNavigationBar: bottomNavBar != null || deviceType != DeviceType.web
          ? bottomNavBar ?? const CoreBottomNavigationBar()
          : null,
    );
  }
}
