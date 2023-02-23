import 'package:flutter/cupertino.dart';

// TabItem 클래스
// Title, Icon 가짐
class TabItem {
  late String _title;
  late IconData _icon;

  // constructor
  TabItem(String title, IconData icon) {
    _title = title;
    _icon = icon;
  }

  String getTitle() => _title;
  IconData getIcon() => _icon;
}