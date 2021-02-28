import 'package:basketball_stats_flutter/ui/utils/AppColors.dart';
import 'package:basketball_stats_flutter/ui/utils/NetworkLinks.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';


class PlayerStatsPage extends StatelessWidget {

  static final beamLocation = BeamPage(key: ValueKey('player'), child: PlayerStatsPage());
  static final path = '/player';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: AppColors.porcelain,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.shark, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              margin: EdgeInsets.fromLTRB(10,20,20,20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getTopName(context),
                  SizedBox(height: 10,),
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                      //ToDo: Make bio widget after implementing api calls.
                      child: SelectableText("Bio", style: TextStyle( fontSize: 40, color: AppColors.shark, fontFamily: 'Bw Beto Grande')),
                  )
                ],
              ),
            ),

          ),
        ],
      )
    );
  }


  Widget getTopName(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SelectableText("Dennis\nSchröder", style: TextStyle( fontSize: 70, color: AppColors.shark, fontFamily: 'Bw Beto Grande')),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width - (MediaQuery.of(context).size.width/1.7) - 50,
                    child: Padding(
                      padding: EdgeInsets.only(left:20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SelectableText("14.5", style: TextStyle( fontSize: 40, color: AppColors.shark, fontFamily: 'Bw Beto Grande', letterSpacing: -1.5, fontWeight: FontWeight.w600)),
                          SelectableText("Points Per Game", style: TextStyle( fontSize: 10, color: AppColors.shark, fontFamily: 'Bw Beto Grande')),
                          SizedBox(height: 20,),
                          SelectableText("3.6", style: TextStyle( fontSize: 40, color: AppColors.shark, fontFamily: 'Bw Beto Grande', letterSpacing: -1.5, fontWeight: FontWeight.w600)),
                          SelectableText("Rebounds Per Game", style: TextStyle( fontSize: 10, color: AppColors.shark, fontFamily: 'Bw Beto Grande')),
                          SizedBox(height: 20,),
                          SelectableText("4.2", style: TextStyle( fontSize: 40, color: AppColors.shark, fontFamily: 'Bw Beto Grande', letterSpacing: -1.5, fontWeight: FontWeight.w600)),
                          SelectableText("Assists Per Game", style: TextStyle( fontSize: 10, color: AppColors.shark, fontFamily: 'Bw Beto Grande')),
                          SizedBox(height: 20,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        Positioned(
            top: 140,
            left: 20,
            child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: NetworkLinks.dennisSchroderImageLink,
                width: MediaQuery.of(context).size.width/1.7
            )
        )
      ],
    );
  }
}

