import 'package:flutter/material.dart';

typedef NavigationWillSwitch = bool Function(int);

class WRBottomNavigationBar extends StatefulWidget {

  final NavigationWillSwitch willSwitch;
  final VoidCallback onTapCenter;
  WRBottomNavigationBar({Key key, this.willSwitch, this.onTapCenter}) : super(key: key);
  _WRBottomNavigationBarState createState() => _WRBottomNavigationBarState();
}

class _WRBottomNavigationBarState extends State<WRBottomNavigationBar> {

  int _currentIndex = 0;

  void _onTapUp(int index) {
    if (_currentIndex == index) return;
    bool success = widget.willSwitch(index);
    if (success) {
      _currentIndex = index;
      setState(() {});
    }
  }
  void _onTapCenter() {
    if (widget.onTapCenter != null) {
      widget.onTapCenter();
    }
  }

  @override
  Widget build(BuildContext context) {
    double bottomPadding = MediaQuery.of(context).padding.bottom;

    return Container(
      width: double.infinity,
      height: bottomPadding + 49,
      color: Color(0xFFf2fbf9),
      child: Padding(
        padding: EdgeInsets.only(bottom: bottomPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ImageIcon(AssetImage('assets/ico_chart_type1.png'), size:25, color: _currentIndex == 0 ? Theme.of(context).primaryColor : Color(0xFFC2C7C6)),
                  Text('概况', style: TextStyle(color: _currentIndex == 0 ? Theme.of(context).primaryColor : Color(0xFFC2C7C6), fontSize: 10),)
                ],
              ),
              onTapUp: (details) => _onTapUp(0),
            ),
            Container(
              width: 49,
              height: 49,
              child: OverflowBox(
                maxHeight: 80,
                maxWidth: 80,
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFdbf4ee), Color(0xFFf2fbf9)],
                      stops: [0, 1],
                    )
                  ),
                  child: GestureDetector(
                    child: Center(
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(28)),
                          gradient: RadialGradient(
                            center: Alignment.topCenter,
                            radius: 0.5,
                            colors: [Color(0xFF189A7C), Color(0xFF24CEA0)],
                            stops: [0, 1],
                            focal: Alignment.bottomCenter,
                            focalRadius: 0.5
                          )
                        ),
                        child: Center(
                          child: ImageIcon(AssetImage('assets/ico_plus.png'), color: Colors.white,)
                        )
                      ),
                    ),
                    onTapUp: (detail) => _onTapCenter(),
                  ),
                ),
              ),
            ),
            GestureDetector(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ImageIcon(AssetImage('assets/ico_chart_type2.png'), size:25, color: _currentIndex == 1 ? Theme.of(context).primaryColor : Color(0xFFC2C7C6)),
                  Text('图表', style: TextStyle(color: _currentIndex == 1 ? Theme.of(context).primaryColor : Color(0xFFC2C7C6), fontSize: 10),)
                ],
              ),
              onTapUp: (detail) => _onTapUp(1),
            )
          ],
        ),
      )
    );
  }
}