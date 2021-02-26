import 'package:basketball_stats_flutter/ui/screens/home/temp_page.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';

class HomeLocation extends BeamLocation {
  @override
  List<String> get pathBlueprints => [TempPage.path];

  @override
  List<BeamPage> get pages => [TempPage.beamLocation];
}