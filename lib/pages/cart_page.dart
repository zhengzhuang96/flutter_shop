import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final Widget child;

  CartPage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('商城购物车UI页面'),
      ),
    );
  }
}