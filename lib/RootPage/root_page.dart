import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../Home/home.dart';
import '../Move/move.dart';
import '../Discover/Discover.dart';
import '../Mine/mine.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key,this.title=''}) : super(key: key);
  final String title;

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {

  int currentIndex = 0;
  void _selectTab(int index){
    print("点击了$index");
    setState(() {
      currentIndex = index;
    });
  }
  List pagelists = [Home(),Move(),Discover(), Mine()];


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectTab,
        selectedItemColor: Color.fromRGBO(99, 204, 108, 1),
        unselectedItemColor: Color(0xff666666),
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,

        items:  <BottomNavigationBarItem>[

          BottomNavigationBarItem(
              icon:Image(
                  image: AssetImage("images/ic_nav_news_normal.png"),
                  width: 30.0,
                height: 30.0,
              ),
              activeIcon: Image(
                image: AssetImage("images/ic_nav_news_actived.png"),
                width: 30.0,
                height: 30.0,
              ),
              label: "综合"
          ),
          BottomNavigationBarItem(
              icon:Image(
                image: AssetImage("images/ic_nav_tweet_normal.png"),
                width: 30.0,
                height: 30.0,
              ),
              activeIcon: Image(
                image: AssetImage("images/ic_nav_tweet_actived.png"),
                width: 30.0,
                height: 30.0,
              ),
              label: "动弹"
          ),
          BottomNavigationBarItem(
              icon:Image(
                image: AssetImage("images/ic_nav_discover_normal.png"),
                width: 30.0,
                height: 30.0,
              ),
              activeIcon: Image(
                image: AssetImage("images/ic_nav_discover_actived.png"),
                width: 30.0,
                height: 30.0,
              ),
              label: "发现"
          ),
          BottomNavigationBarItem(
              icon:Image(
                image: AssetImage("images/ic_nav_my_normal.png"),
                width: 30.0,
                height: 30.0,
              ),
              activeIcon: Image(
                image: AssetImage("images/ic_nav_my_pressed.png"),
                width: 30.0,
                height: 30.0,
              ),
              label: "我的"
          ),
        ],
        // ffc81f
      ),
      body: pagelists[currentIndex],
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
