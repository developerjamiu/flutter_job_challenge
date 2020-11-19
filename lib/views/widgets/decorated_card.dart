import 'package:flutter/material.dart';

import '../../core/constants.dart';

class DecoratedCard extends StatelessWidget {
  final Widget child;

  const DecoratedCard({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      elevation: 5,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: kPrimaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: child,
      ),
    );
  }
}
