import 'package:aakarfoundry/utils/color_constant.dart';
import 'package:aakarfoundry/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: AppBar(
              title: Padding(
                padding: getPadding(top: 20),
                child: Row(
                  children: [
                    CircleAvatar(),
                    Column(
                      children: [
                        Text("Sanket More",style: TextStyle(fontSize: getFontSize(20)),),
                        Text("Marketing Department")
                      ],
                    )
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
          body: TabBarView(
              children:[
                Container(
                  child: Center(child:Text("1st Tab")),
                ),
                Container(
                  child: Center(child:Text("2st Tab")),
                ),
                Container(
                  child: Center(child:Text("3st Tab")),
                ),
              ]
          ),
        )
    );
  }
}
