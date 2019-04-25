import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  Widget buildSeparator({double leftSpace = 16}) {
    return new Padding(
      padding: EdgeInsets.only(left: leftSpace),
      child: Divider(
        color: Colors.black54,
        height: 1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
            child: SafeArea(
              bottom: false,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.clear),
                            color: Theme.of(context).primaryColorLight,
                            highlightColor: Color(0x7FFFFFFF),
                            iconSize: 25,
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ],
                    ),
                  ),
                  new Container(
                    padding: const EdgeInsets.all(32.0),
                    child: new Row(
                      children: [
                        new CircleAvatar(
                          radius: 25.0,
                          backgroundImage: new NetworkImage(
                              "https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3463668003,3398677327&fm=58"),
                        ),
                        new Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Container(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: new Text(
                                    'Luke',
                                    style: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        color: Colors.white),
                                  ),
                                ),
                                new Text(
                                  '数据已经同步到云端',
                                  style: new TextStyle(
                                      color: Colors.white, fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    width: screenWidth - 30,
                    child: Divider(
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text('0',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColorLight,
                                    fontSize: 20,
                                    fontFamily: 'Oswald')),
                            Text('坚持记录(天)',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColorLight,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text('0.0',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColorLight,
                                    fontSize: 20,
                                    fontFamily: 'Oswald')),
                            Text('体重变化(斤)',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColorLight,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ],
                    ),
                  ),
                  new Container(height: 20),
                  new Container(
                    padding: EdgeInsets.only(top: 20.0),
                    color: Colors.white,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new MyPageItem(
                            title: Text(
                              '体重单位',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColorDark,
                                  fontSize: 16),
                            ),
                            icon: Icon(
                              Icons.line_weight,
                              color: Theme.of(context).primaryColor,
                            ),
                            itemText: Text('斤',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 14)),
                            onTap: (TapUpDetails details) => {}),
                        new MyPageItem(
                            title: Text(
                              '体重目标',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColorDark,
                                  fontSize: 16),
                            ),
                            icon: Icon(
                              Icons.merge_type,
                              color: Theme.of(context).primaryColor,
                            ),
                            itemText: Text('未设置',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 14)),
                            onTap: (TapUpDetails details) => {}),
                        new MyPageItem(
                            title: Text(
                              '记录提醒',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColorDark,
                                  fontSize: 16),
                            ),
                            icon: Icon(
                              Icons.alarm_add,
                              color: Theme.of(context).primaryColor,
                            ),
                            itemText: Text('21:00',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 14)),
                            onTap: (TapUpDetails details) => {}),
                        new MyPageItem(
                            title: Text(
                              '更换皮肤',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColorDark,
                                  fontSize: 16),
                            ),
                            icon: Icon(
                              Icons.palette,
                              color: Theme.of(context).primaryColor,
                            ),
                            itemText: Text('绿色',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 16)),
                            onTap: (
                              TapUpDetails details,
                            ) =>
                                {}),
                        new Container(height: 20),
                        new MyPageItem(
                            title: Text(
                              '好评鼓励',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColorDark,
                                  fontSize: 16),
                            ),
                            icon: Icon(
                              Icons.star_border,
                              color: Theme.of(context).primaryColor,
                            ),
                            itemText: Text('',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 16)),
                            onTap: (TapUpDetails details) => {}),
                        new MyPageItem(
                            title: Text(
                              '设置',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColorDark,
                                  fontSize: 16),
                            ),
                            icon: Icon(
                              Icons.settings,
                              color: Theme.of(context).primaryColor,
                            ),
                            itemText: Text('',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 16)),
                            onTap: (TapUpDetails details) => {}),
                        new Container(height: 20),
                        new MyPageItem(
                            title: Text(
                              '七分钟运动',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColorDark,
                                  fontSize: 16),
                            ),
                            icon: Icon(
                              Icons.filter_7,
                              color: Theme.of(context).primaryColor,
                            ),
                            itemText: Text('',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 16)),
                            onTap: (TapUpDetails details) => {}),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPageItem extends StatelessWidget {
  GestureTapUpCallback onTap;
  final Widget title;
  final Widget icon;
  final Widget itemText;

  MyPageItem({Key key, this.title, this.icon, this.itemText, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: new Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          child: new GestureDetector(
            onTapUp: this.onTap,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    icon,
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: title,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    itemText,
                    Icon(
                      Icons.navigate_next,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
