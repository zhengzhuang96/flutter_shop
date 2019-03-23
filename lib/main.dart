import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './pages/index_page.dart';
import 'package:provide/provide.dart';
import './provide/counter.dart';

void main() {
  var counter = Counter();
  var providers = Providers();
  providers
    ..provide(Provider<Counter>.value(counter));

  runApp(ProviderNode(child: MyApp(), providers: providers));
}

// void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '百姓生活+',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.pink),
        home: IndexPage(),
      ),
    );
  }
}
