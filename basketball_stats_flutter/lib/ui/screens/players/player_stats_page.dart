import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerStatsLocationPage extends StatelessWidget {

  static final beamLocation = BeamPage(key: ValueKey('player'), child: PlayerStatsLocationPage());
  static final path = '/player';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        shadowColor: Colors.white,
        title: Text('Player Stats Example', style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Text("Temp_Home!", style: TextStyle(color: Colors.black)) ,
        ),
      ),
    );
  }
}