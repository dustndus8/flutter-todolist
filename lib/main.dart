import 'package:flutter/material.dart';
import 'package:flutter_todolist/tab_item.dart';

void main() {
  runApp(TodoListApp());
}

class TodoListApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TodoListAppState();
}

class _TodoListAppState extends State<TodoListApp> {

  //TabItem 리스트
  final List<TabItem> _tabItems = [
    TabItem("시작전", Icons.clear),
    TabItem("진행중", Icons.loop),
    TabItem("Done", Icons.check),
  ];

  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TodoList',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text(_tabItems[_currentTabIndex].getTitle())),
        bottomNavigationBar: _createBottomNavigationBar(),
      ),
    );
  }

  Widget _createBottomNavigationBar() {
    return BottomNavigationBar(
        items: _tabItems.map((tabItem) =>
          BottomNavigationBarItem(icon: Icon(tabItem.getIcon()), label: tabItem.getTitle()),
    ).toList(),
    currentIndex: _currentTabIndex,
    onTap: (int index) => {
          _onTabClick(index)
    },
    );
  }

  void _onTabClick(int index) {
    setState(() {
      _currentTabIndex = index;
    });
  }

}

