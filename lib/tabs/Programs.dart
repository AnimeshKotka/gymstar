import 'package:flutter/material.dart';
import '../models/exercise.dart';
import '../components/Header.dart';
import '../components/user_photo.dart';
import '../components/main_card_program.dart';
import '../components/image_card_internal.dart';
import '../components/image_card_basic_footer.dart';
import '../components/section.dart';
import '../components/daily_tips.dart';
import '../components/user_tip.dart';
import '../pages/activity_details.dart';

class Programs extends StatelessWidget {
  final List<Exercise> exercises = [
    Exercise(
      image: 'assets/images/image001.jpg',
      title: 'Easy Start',
      time: '5 min',
      difficult: 'Low',
    ),
    Exercise(
      image: 'assets/images/image002.jpg',
      title: 'Medium Start',
      time: '10 min',
      difficult: 'Medium',
    ),
    Exercise(
      image: 'assets/images/image003.jpg',
      title: 'Pro Start',
      time: '25 min',
      difficult: 'High',
    )
  ];

  List<Widget> generateList(BuildContext context) {
    List<Widget> list = [];
    int count = 0;
    exercises.forEach((exercise) {
      Widget element = Container(
        margin: EdgeInsets.only(right: 20),
        child: GestureDetector(
            child: ImageCardWithBasicFooter(
                exercise: exercise, tag: 'imageHeader$count'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return ActivityDetail(
                  exercise: exercise,
                  tag: 'imageHeader$count',
                );
              }));
            } // add Activity here,
            ),
      );
      list.add(element);
      count++;
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Header(
              'Programs',
              rightSide: UserPhoto(),
            ),
            MainCardPrograms(),
            Section(
                'Fat Burning',
                this.generateList(
                  context,
                )),
            Section('Abs Workout', <Widget>[
              ImageCardWithInternal(
                image: 'assets/images/image004.jpg',
                title: 'Core \nWorkout',
                duration: '7 min',
              ),
              ImageCardWithInternal(
                image: 'assets/images/image022.jpeg',
                title: 'Upper Abs\nWorkout',
                duration: '6 min',
              ),
              ImageCardWithInternal(
                image: 'assets/images/image017.jpg',
                title: 'Lower Abs\nWorkout',
                duration: '6 min',
              ),
            ]),
            Container(
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.only(top: 10, bottom: 40),
              decoration: BoxDecoration(
                color: Colors.blue[50],
              ),
              child: Column(
                children: <Widget>[
                  Section('Daily Tips', <Widget>[
                    UserTip(
                      image: 'assets/images/image010.jpg',
                      name: 'Joe',
                    ),
                    UserTip(
                      image: 'assets/images/image018.jpg',
                      name: 'Rock',
                    ),
                    UserTip(
                      image: 'assets/images/image016.png',
                      name: 'Leo',
                    ),
                    UserTip(
                      image: 'assets/images/image020.jpg',
                      name: 'Charlee',
                    ),
                    UserTip(
                      image: 'assets/images/image019.jpg',
                      name: 'Jack',
                    ),
                  ]),
                  Section(
                    '',
                    <Widget>[
                      DailyTip(),
                      DailyTip(),
                      DailyTip(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ))),
    );
  }
}
