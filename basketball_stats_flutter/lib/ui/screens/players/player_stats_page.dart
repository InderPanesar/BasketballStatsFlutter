import 'package:basketball_stats_flutter/ui/utils/AppColors.dart';
import 'package:basketball_stats_flutter/ui/utils/NetworkLinks.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerStatsLocationPage extends StatelessWidget {

  static final beamLocation = BeamPage(key: ValueKey('player'), child: PlayerStatsLocationPage());
  static final path = '/player';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: AppColors.porcelain,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: AppColors.porcelain,
        elevation: 0,
      ),
      body: Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SelectableText("Dennis\nSchröder", style: TextStyle( fontSize: 70, color: Colors.black, fontFamily: 'Bw Beto Grande')),
                      ],
                    ),
                  ),
                ],
              ),

              Align(
                alignment: Alignment(-0.65, -0.46),
                child: Image.network(NetworkLinks.dennisSchroderImageLink, width: 280,)
              )

            ],

          )
      );
  }
}

