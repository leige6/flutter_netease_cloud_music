/*
 * @Author: wangzhongjie
 * @Date: 2019-02-20 15:47:53
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-08-02 15:09:56
 * @Description: 账户
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import '../../components/play.dart';
import './tab.dart';

class FriendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {},
          child: Icon(
            IconData(0xe60d, fontFamily: 'IconFont'),
            size: 32,
          ),
        ),
        title: TabPage(),
        elevation: 1,
        centerTitle: true,
        actions: <Widget>[PlayButton()],
      ),
      body: Text("朋友"),
    );
  }
}
