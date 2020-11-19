import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants.dart';
import '../widgets/badge_painter.dart';
import '../widgets/decorated_card.dart';
import '../widgets/tag.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 8.0),
              child: Image.asset(
                'assets/images/map.png',
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Card(
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      about,
                      SizedBox(height: 24),
                      availableTime,
                      SizedBox(height: 24),
                      tags,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget get about => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'About Al-Bakheet:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
              Container(
                width: 55,
                height: 53,
                child: CustomPaint(
                  painter: BadgePainter(),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Center(
                      child: Text(
                        'ID No.\n24367',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.0),
          DecoratedCard(
            child: Text(
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      );

  Widget get availableTime => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          dayAndTime('Saturday', '8am - 10pm'),
          dividerWithText('From'),
          SvgPicture.asset('assets/images/clock.svg'),
          dividerWithText('To'),
          dayAndTime('Thursday', '8am - 6pm'),
        ],
      );

  Widget get tags => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tags:',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
          SizedBox(height: 12.0),
          DecoratedCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    Tag(label: 'Toyota cars'),
                    Tag(label: 'Brakes'),
                    Tag(label: 'Bumps'),
                    Tag(label: 'Prado'),
                    Tag(label: 'Toyota wheels'),
                    Tag(label: 'Oil change'),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Spacer(),
                    Text(
                      'View more',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF30A1DF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );

  Widget dayAndTime(String day, String time) {
    return Column(
      children: [
        Text(day),
        SizedBox(height: 4),
        Text(
          time,
          style: TextStyle(fontSize: 8),
        )
      ],
    );
  }

  Widget dividerWithText(String text) {
    return Container(
      width: 40,
      padding: const EdgeInsets.only(bottom: 2),
      margin: const EdgeInsets.only(bottom: 6),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}
