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
    return Scaffold(
        appBar: AppBar(
          title: Text('我的'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                new MyPageItem(
                    title: Text(
                      '体重单位',
                      style: TextStyle(color: Theme.of(context).primaryColorDark, fontSize: 16),
                    ),
                    icon: Icon(
                      Icons.line_weight,
                      color: Theme.of(context).primaryColor,
                    ),
                    itemText: Text('斤',style:TextStyle(color: Colors.grey, fontSize: 14)),
                    onTap: (TapUpDetails details) => {
                    }),
                new MyPageItem(
                    title: Text(
                      '体重目标',
                      style: TextStyle(color: Theme.of(context).primaryColorDark, fontSize: 16),
                    ),
                    icon: Icon(Icons.merge_type, color: Theme.of(context).primaryColor,),
                    itemText: Text('未设置',style:TextStyle(color: Colors.grey, fontSize: 14)),
                    onTap: (TapUpDetails details) => {
                    }),
                new MyPageItem(
                    title: Text(
                      '记录提醒',
                      style: TextStyle(color: Theme.of(context).primaryColorDark, fontSize: 16),
                    ),
                    icon: Icon(Icons.alarm_add, color: Theme.of(context).primaryColor,),
                    itemText: Text('21:00',style:TextStyle(color: Colors.grey, fontSize: 14)),
                    onTap: (TapUpDetails details) => {}),
                new MyPageItem(
                    title: Text(
                      '更换皮肤',
                      style: TextStyle(color: Theme.of(context).primaryColorDark, fontSize: 16),
                    ),
                    icon: Icon(Icons.palette, color: Theme.of(context).primaryColor,),
                    itemText: Text('绿色',style:TextStyle(color: Colors.grey, fontSize: 16)),
                    onTap: (
                        TapUpDetails details,
                        ) =>
                    {}),

                new Container(height: 20),

                new MyPageItem(
                    title: Text(
                      '好评鼓励',
                      style: TextStyle(color: Theme.of(context).primaryColorDark, fontSize: 16),
                    ),
                    icon: Icon(Icons.star_border, color: Theme.of(context).primaryColor,),
                    itemText:Text('',style:TextStyle(color: Colors.grey, fontSize: 16)),
                    onTap: (TapUpDetails details) => {}),
                new MyPageItem(
                    title: Text(
                      '设置',
                      style: TextStyle(color: Theme.of(context).primaryColorDark, fontSize: 16),
                    ),
                    icon: Icon(Icons.settings, color: Theme.of(context).primaryColor,),
                    itemText:Text('',style:TextStyle(color: Colors.grey, fontSize: 16)),
                    onTap: (TapUpDetails details) => {}),

                new Container(height: 20),

                new MyPageItem(
                    title: Text(
                      '七分钟运动',
                      style: TextStyle(color: Theme.of(context).primaryColorDark, fontSize: 16),
                    ),
                    icon: Icon(Icons.filter_7, color: Theme.of(context).primaryColor,),
                    itemText:Text('',style:TextStyle(color: Colors.grey, fontSize: 16)),
                    onTap: (TapUpDetails details) => {}),
              ],
            ),
          ),
        ));
  }
}

class MyPageItem extends StatelessWidget {
  GestureTapUpCallback onTap;
  final Widget title;
  final Widget icon;
  final Widget itemText;

  MyPageItem({Key key, this.title, this.icon, this.itemText,this.onTap}) : super(key: key);

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
