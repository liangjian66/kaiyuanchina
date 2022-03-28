import 'package:flutter/material.dart';

class Move extends StatefulWidget {
  const Move({Key? key}) : super(key: key);

  @override
  State<Move> createState() => _MoveState();
}

class _MoveState extends State<Move> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('动弹页面'),
    );
  }
}
