import 'package:basketball_stats_flutter/ui/screens/players/player_stats_location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';


class TempPage extends StatelessWidget {
  static final beamLocation = BeamPage(key: ValueKey('home'), child: TempPage());
  static final path = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black38,
        child: Center(
          child: TextButton(child:
          Text("Temp_Home!",
            style: TextStyle(color: Colors.white),),
            onPressed: () => Beamer.of(context).beamTo(PlayerStatsLocation(pathBlueprint: '/player')),
          ),
        ),
      ),
    );
  }
}