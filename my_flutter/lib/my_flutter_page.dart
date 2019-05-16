
import 'package:flutter/material.dart';



class MyFlutterPage extends StatelessWidget {

  MyFlutterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _containerWidget(),
    );
    // return _containerWidget();
  }

  Widget _containerWidget() {
    return Container(
      padding: EdgeInsets.only(left: 20,top: 10,right: 20),
      child: Text("""
Flutter 页面, 产物集成说明：
1. 无依赖, 不影响原生项目；
2. 不需要 flutter 开发环境；
3. demo git 地址: https://github.com/ZeroJian/FlutterHybrid
4. 作者: ZeroJian
      """,
      textAlign: TextAlign.left,
      style: TextStyle(color: Color(0xFF666666), fontSize: 15),
      ),
    );
  }
}