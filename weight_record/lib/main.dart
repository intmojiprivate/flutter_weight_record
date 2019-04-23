import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeightRecord',
      theme: ThemeData(
        primaryColor: Color(0xFF23CB79),
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
                  Container(
                    width: double.infinity,
                    child: Center(
                      child: CustomPaint(
                        size: Size(200, 200),
                        foregroundPainter: MyBackgroudPainter(),
                        painter: MyContentPainter(),
                        isComplex: false
                      ),
                    ),
                  ),
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

class MyBackgroudPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint() //创建一个画笔并配置其属性
      ..isAntiAlias = true //是否抗锯齿
      ..style = PaintingStyle.fill //画笔样式：填充
      ..color=Color(0xFF00FF00);
    // canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);//画笔颜色

    //定义半径
    double radius = size.width / 2 - 10;
    double centerX = size.width / 2.0;
    double centerY = size.height / 2.0;
    //起始角度
    double startAngel = - math.pi * 5 / 4.0;
    double sweepAngel = math.pi * 3 / 2.0;

    var rect = Rect.fromCircle(center: Offset(centerX, centerY), radius: radius);
    var innerRect = Rect.fromCircle(center: Offset(centerX, centerY), radius: radius - 12);
    var outerRect = Rect.fromCircle(center: Offset(centerX, centerY), radius: radius + 9);

    // paint.color = Color(0xFFFFFFFF);
    paint.style = PaintingStyle.stroke;
    paint.shader = SweepGradient(
        colors: [Colors.white54, Colors.white, Colors.white54],
        stops: [0.5, 0.75, 1],
      ).createShader(rect);
    paint.strokeWidth = 12;
    
    canvas.drawArc(
      rect,
      startAngel, 
      sweepAngel,
      false, 
      paint
    );

    paint.color = Colors.white54;
    paint.style = PaintingStyle.stroke;
    paint.shader = null;
    paint.strokeWidth = 30;
    canvas.drawArc(
      outerRect,
      startAngel - math.pi * 1 / 180, 
      math.pi * 1 / 180,
      false, 
      paint
    );
    canvas.drawArc(
      outerRect,
      startAngel + sweepAngel,
      math.pi * 1 / 180,
      false, 
      paint
    );


    paint.color = Colors.white30;
    paint.strokeWidth = 12;
     paint.shader = SweepGradient(
        colors: [Colors.white54, Colors.white10, Colors.white54],
        stops: [0, 1 / 4.0, 1 / 2.0],
      ).createShader(rect);
    canvas.drawArc(
      innerRect,
      0, 
      2 * math.pi,
      false, 
      paint
    );
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class MyContentPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}