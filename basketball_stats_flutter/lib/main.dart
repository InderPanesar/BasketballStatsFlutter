import 'package:basketball_stats_flutter/ui/screens/home/home_location.dart';
import 'package:basketball_stats_flutter/ui/screens/players/player_stats_location.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    final BeamLocation initialLocation = HomeLocation();
    final List<BeamLocation> beamLocations = [
      HomeLocation(),
      PlayerStatsLocation()
    ];

    return MaterialApp.router(
      title: 'Basketball Stats App',
      routerDelegate: BeamerRouterDelegate(
        initialLocation: initialLocation,
      ),
      routeInformationParser: BeamerRouteInformationParser(
        beamLocations: beamLocations,
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

