import 'package:aakarfoundry/pages/ecn_screen.dart';
import 'package:aakarfoundry/pages/rfq_screen.dart';
import 'package:aakarfoundry/utils/color_constant.dart';
import 'package:aakarfoundry/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

import '../themes/app_style.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(120),
              child: AppBar(
                title: Padding(
                  padding: getPadding(top: 20, bottom: 2),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 22,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1639747280804-dd2d6b3d88ac?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60"),
                      ),
                      Padding(
                        padding: getPadding(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sanket More",
                              style: TextStyle(fontSize: getFontSize(20)),
                            ),
                            Text(
                              "Marketing Department",
                              style: AppStyle.txtPoppinsMedium12(Colors.red),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: TabBar(
                  indicatorColor: Colorselect.bule400,
                  tabs: [
                    Tab(
                      text: 'Home',
                    ),
                    Tab(
                      text: 'RFQ',
                    ),
                    Tab(
                      text: 'ECN',
                    ),
                  ],
                ),
                backgroundColor: Colorselect.afBlueDark,
              ),
            ),
            body: TabBarView(children: [
              Container(
                child: Center(child: Text("1st Tab")),
              ),
              RFQScreen(),
              /*Container(
                    child: Center(child:Text("2st Tab")),
                  ),*/
              ECNScreen()
              /*Container(
                    child: Center(child:Text("3st Tab")),
                  ),*/
            ]),
          )),
    );
  }
}
