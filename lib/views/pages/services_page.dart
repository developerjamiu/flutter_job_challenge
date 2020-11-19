import 'package:flutter/material.dart';

import '../../core/data.dart';
import '../widgets/services_list.dart';

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: [
            ServicesList(
              category: 'Wash & Polish',
              services: washAndPolish,
            ),
            ServicesList(
              category: 'Wiring & Electric',
              services: wiringAndElectric,
            ),
            ServicesList(
              category: 'Engine',
              services: engine,
            ),
            ServicesList(
              category: 'Body fixing',
              services: bodyFixing,
            ),
          ],
        ),
      ),
    );
  }
}
