import 'package:flutter/material.dart';
import '../base/data.dart';
class TopBar extends StatelessWidget {
  const TopBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: topBar.length,
      child: Scaffold(
        appBar: AppBar(
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.red,
              indicatorWeight: 2.0,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: topBar
                  .map((String name) => Container(
                        child: Text(
                          name,
                        ),
                        padding: const EdgeInsets.only(bottom: 5.0),
                      ))
                  .toList(),
            ),
            title: Container(
              height: 30,
              decoration: BoxDecoration(
                border: new Border.all(color: Colors.black12), // 边色与边宽度
                //        borderRadius: new BorderRadius.circular((20.0)), // 圆角度
                borderRadius: new BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: new EdgeInsets.only(left: 10.0),
                    hintText: "搜索",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black26,
                    )),
              ),
            )),
      ),
    );
  }
}