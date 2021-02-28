import 'package:basketball_stats_flutter/ui/screens/home/home_location.dart';
import 'package:basketball_stats_flutter/ui/screens/home/temp_page.dart';
import 'package:basketball_stats_flutter/ui/screens/players/player_stats_page.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';

class PlayerStatsLocation extends BeamLocation {

  PlayerStatsLocation({String pathBlueprint, Map<String, String> pathParameters,}) : super(
    pathBlueprint: pathBlueprint,
    pathParameters: pathParameters,
  );

  @override
  List<String> get pathBlueprints => [PlayerStatsPage.path];

  @override
  List<BeamPage> get pages => [
    TempPage.beamLocation,
    if(pathBlueprint.contains("player")) PlayerStatsPage.beamLocation,
  ];
}