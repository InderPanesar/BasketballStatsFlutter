import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TempPage extends StatelessWidget {

  PageRoute<dynamic> returnDeviceSpecificRoute(BuildContext context, Widget widget, String routeName) {
    final _platform = Theme.of(context).platform;
    return _platform == TargetPlatform.iOS
        ? CupertinoPageRoute(builder: (context) => widget, settings: RouteSettings(name: routeName))
        : MaterialPageRoute(builder: (context) => widget, settings: RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("Temp_Home!"),
      ),
    );
  }
}