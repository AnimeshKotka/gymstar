import 'package:flutter/material.dart';
import '../components/Header.dart';
import '../components/tabs_base_view.dart';

class Diet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: SafeArea(
          child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white10,
            flexibleSpace: Header(
              'Diet',
              rightSide: Container(
                height: 30,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                margin: EdgeInsets.only(right: 20.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(100, 140, 255, 1.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Tracker',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
            bottom: TabBar(
              tabs: <Widget>[
                Container(
                  height: 30,
                  child: Tab(
                    text: 'BreakFast',
                  ),
                ),
                Container(
                  height: 30,
                  child: Tab(
                    text: 'Lunch',
                  ),
                ),
                Container(
                  height: 30,
                  child: Tab(
                    text: 'Snacks',
                  ),
                ),
                Container(
                  height: 30,
                  child: Tab(
                    text: 'Dinner',
                  ),
                )
              ],
              labelColor: Colors.black87,
              unselectedLabelColor: Colors.grey[400],
              indicatorWeight: 4.0,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Color.fromRGBO(215, 225, 255, 1.0),
            ),
          ),
          body: TabBarView(children: <Widget>[
            TabViewBase('BreakFast'),
            TabViewBase('Lunch'),
            TabViewBase('Snacks'),
            TabViewBase('Dinner'),
          ]),
        ),
      )),
    );
  }
}
