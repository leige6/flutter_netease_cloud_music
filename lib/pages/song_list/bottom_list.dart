import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomList extends StatelessWidget {
  final List songList;
  BottomList(this.songList);
  @override
  Widget build(BuildContext context) {
    print('列表数据');
    print(songList[0]);
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 0),
        itemBuilder: _itemBuilder,
        itemCount: songList.length,
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    // return ListTile(
    //   leading: Text('${index + 1}'),
    //   title: Text('${songList[index]['name']}'),
    //   subtitle: Text('副标题'),
    // );
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: ScreenUtil().setHeight(70),
      child: Row(
        children: <Widget>[
          Container(
            width: ScreenUtil().setWidth(82),
            alignment: Alignment.center,
            child: Text(
              '${index + 1}',
              style: TextStyle(color: Colors.black54),
            ),
          ),
          Container(
            width: ScreenUtil().setWidth(500),
            alignment: Alignment.centerLeft,
            child: Column(
              children: <Widget>[
                Text(
                  '${songList[index]['name']}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
