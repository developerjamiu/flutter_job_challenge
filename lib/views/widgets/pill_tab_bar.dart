import 'package:flutter/material.dart';

import '../../core/constants.dart';

class PillTabBar extends StatefulWidget {
  final List<String> items;
  final int initialIndex;
  final Function(int) onChanged;

  const PillTabBar({
    Key key,
    this.initialIndex = 0,
    @required this.onChanged,
    @required this.items,
  }) : super(key: key);

  @override
  _PillTabBarState createState() => _PillTabBarState();
}

class _PillTabBarState extends State<PillTabBar> {
  int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List<Widget>.generate(
          widget.items.length,
          (index) => Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                  widget.onChanged(_selectedIndex);
                });
              },
              child: Container(
                height: 36.0,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 2.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(52.0),
                  gradient: _selectedIndex == index
                      ? kPrimaryGradient
                      : LinearGradient(colors: [Colors.white, Colors.white]),
                ),
                child: Center(
                  child: Text(
                    widget.items[index],
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: _selectedIndex == index
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: _selectedIndex == index
                          ? Colors.white
                          : kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
