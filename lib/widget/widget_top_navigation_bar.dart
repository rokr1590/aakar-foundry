import 'package:aakarfoundry/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DefaultTabController(
        length: 3,
        child: Container(
          color: Colors.blue,
          child: Column(
            children: [
              ButtonsTabBar(
                backgroundColor: Colorselect.afBlueLight,
                unselectedBackgroundColor: Colors.grey[300],
                tabs: const [
                  Tab(
                    text: "Home",
                  ),
                  Tab(
                    text: "RFQ",
                  ),
                  Tab(
                    text: "ECN",
                  ),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    Center(
                      child: Icon(Icons.directions_car),
                    ),
                    Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    Center(
                      child: Icon(Icons.directions_bike),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
