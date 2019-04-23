import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeightRecord',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColorLight: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
            width: screen_width,
            height: screen_width,
            child: SafeArea(
              bottom: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: ImageIcon(AssetImage('assets/ico_shop.png')),
                        color: Theme.of(context).primaryColorLight,
                        highlightColor: Color(0x7FFFFFFF),
                        iconSize: 25,
                        onPressed: () {

                        }
                      ),
                      Text('已连续记录 0 天', style: TextStyle(color: Theme.of(context).primaryColorLight, fontSize: 16),),
                      IconButton(
                        icon: ImageIcon(AssetImage('assets/ico_person.png')),
                        color: Theme.of(context).primaryColorLight,
                        highlightColor: Color(0x7FFFFFFF),
                        iconSize: 25,
                        onPressed: () {
                          
                        }
                      ),
                    ],
                  ),
                  Row(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text('0.0', style: TextStyle(color: Theme.of(context).primaryColorLight, fontSize: 20)),
                            Text('对比上次', style: TextStyle(color: Theme.of(context).primaryColorLight, fontSize: 12, fontWeight: FontWeight.w400))
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text('150.0', style: TextStyle(color: Theme.of(context).primaryColorLight, fontSize: 20)),
                            Text('目标体重', style: TextStyle(color: Theme.of(context).primaryColorLight, fontSize: 12, fontWeight: FontWeight.w400))
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text('66.0', style: TextStyle(color: Theme.of(context).primaryColorLight, fontSize: 20)),
                            Text('距离目标', style: TextStyle(color: Theme.of(context).primaryColorLight, fontSize: 12, fontWeight: FontWeight.w400))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          )
        ],
      )
    );
  }
}
