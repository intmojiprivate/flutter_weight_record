import 'package:flutter/material.dart';

class WRDateList extends StatefulWidget {

  WRDateList({Key key}) : super(key: key);
  _WRDateListState createState() => _WRDateListState();
}

class _WRDateListState extends State<WRDateList> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        ConstrainedBox(
          constraints: BoxConstraints.tightFor(height: 45),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text('04月22日 - 04月28日', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Offstage(
                  offstage: false,
                  child: ImageIcon(AssetImage('assets/ico_next.png'), size: 20, color: Theme.of(context).primaryColor),
                ),
              )
            ],
          ),
        ),
        Divider(height: 1, color: Colors.black54),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.only(bottom: 32, left: 15, right: 15),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              reverse: true,
              itemExtent: (screenWidth - 30) / 7.0,
              itemCount: 70,
              itemBuilder: (context, index) {
                return WRDateItem();
              },
            ),
          ),
        ),
      ],
    );
  }
}

class WRDateItem extends StatelessWidget {
  const WRDateItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: ImageIcon(AssetImage('assets/ico_face.png'), color: Colors.black54, size: 25,),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5, bottom: 5),
          child: Text('0.0', style: TextStyle(color: Colors.black54, fontSize: 12))
        ),
        Expanded(
          flex: 1,
          child: Column (
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 32,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                  color: Theme.of(context).primaryColor,
                ),
              )
            ],
          )
        ),
        Padding(
          padding: EdgeInsets.only(top: 5, bottom: 5),
          child: Text('今天', style: TextStyle(color: Colors.black54, fontSize: 12)),
        )
      ],
    );
  }
}