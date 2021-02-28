import 'package:auto_size_text/auto_size_text.dart';
import 'package:basketball_stats_flutter/ui/utils/AppColors.dart';
import 'package:basketball_stats_flutter/ui/utils/NetworkLinks.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter/foundation.dart' show kIsWeb;


class PlayerStatsPage extends StatefulWidget {
  static final beamLocation = BeamPage(key: ValueKey('player'), child: PlayerStatsPage());
  static final path = '/player';

  @override
  PlayerStatsPageState createState() => PlayerStatsPageState();
}

class PlayerStatsPageState extends State<PlayerStatsPage> {


  final subheadingStats = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: AppColors.porcelain,
      appBar: getPlatformSpecificAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              margin: EdgeInsets.fromLTRB(10,20,20,20),
              child:

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topLeft,
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            getTopName(context),
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 110 * scaleValueHeight(), left: 20 * scaleValueWidth()),
                            child: FadeInImage.memoryNetwork(
                                placeholder: kTransparentImage,
                                image: NetworkLinks.dennisSchroderImageLink,
                                width: MediaQuery.of(context).size.width/1.7,
                              ),

                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),

                  Padding(
                    padding: EdgeInsets.only(left: 20 * scaleValueWidth()),
                    //ToDo: Make bio widget after implementing api calls.
                    child: SelectableText("Bio", style: TextStyle( fontSize: 30, color: AppColors.shark, fontFamily: 'Bw Beto Grande')),
                  )
                ],
              )

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
                  Align(
                    alignment: Alignment.bottomRight,
                    child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          "Dennis\nSchroder",
                          style: TextStyle(
                            color: AppColors.shark,
                            fontFamily: 'Bw Beto Grande',
                            fontSize: 70,
                          ),
                          maxLines: 2,
                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: MediaQuery.of(context).size.width - (MediaQuery.of(context).size.width/1.7) - 50 - (20 * scaleValueWidth() - 20),
                    child: Padding(
                      padding: EdgeInsets.only(left:20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          statTitle("14.5"),
                          statSubtitle("Points Per Game", "PPG"),
                          SizedBox(height: 20,),
                          statTitle("3.6"),
                          statSubtitle("Rebounds Per Game", "RPG"),
                          SizedBox(height: 20,),
                          statTitle("4.2"),
                          statSubtitle("Assists Per Game", "APG"),
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


      ],
    );
  }

  double scaleValueWidth() {
     return MediaQuery.of(context).size.width/500.0;
  }

  double scaleValueHeight() {
    return MediaQuery.of(context).size.height/919.0;
  }


  Widget statTitle(String title) {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          Expanded(
            child: AutoSizeText(
                title,
                minFontSize: 30,
                maxLines: 1,
                style: TextStyle(
                    fontSize: 40,
                    color: AppColors.shark,
                    fontFamily: 'Bw Beto Grande',
                    letterSpacing: -1.5,
                    fontWeight: FontWeight.w600
                )
            ),
          )
        ],
      ),
    );
  }


  Widget statSubtitle(String subtitle, String abbreviate) {
    return SizedBox(
      height: 12,
      child: Row(
        children: [
          Expanded(
            child: AutoSizeText(
                subtitle,
                minFontSize: 10,
                group: subheadingStats,
                overflowReplacement: Text(
                    abbreviate,
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.shark,
                        fontFamily: 'Bw Beto Grande'
                    ) ,
                ),
                maxLines: 1,
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.shark,
                    fontFamily: 'Bw Beto Grande'
                )
            ),
          )
        ],
      ),
    );
  }


  Widget getPlatformSpecificAppBar() {
    if (kIsWeb) {
      return AppBar(
        automaticallyImplyLeading: false,
        leading: Navigator.canPop(context) ? Padding(
                padding: EdgeInsets.only(left: 10),
                child: FittedBox(
                  child: TextButton(
                    child: Text(
                    "Back",
                    style: TextStyle(
                        color: AppColors.shark,
                        fontFamily: 'Bw Beto Grande',
                        fontSize: 70),
                    maxLines: 1,
                  ),
                  onPressed: () => Navigator.pop(context),
            ),

            )

        ) : null,
        backgroundColor: Colors.transparent,
        elevation: 0,
      );
    }
    else {
      return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: AppColors.shark, //change your color here
        ),
      );
    }
  }





}

