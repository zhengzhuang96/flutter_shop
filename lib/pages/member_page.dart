import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../provide/counter.dart';

class MemberPage extends StatelessWidget {
  final Widget child;

  MemberPage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Number(),
      ),
    );
  }
}


class Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 200),
      child: Provide<Counter>(
        builder: (context, child, counter){
          return Text(
            '${counter.value}',
            style: Theme.of(context).textTheme.display1,
          );
        },
      ),
    );
  }
}