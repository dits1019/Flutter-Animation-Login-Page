import 'package:day_or_night_animation/screens/login/components/body.dart';
import 'package:day_or_night_animation/size_config.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); //size_config.dart에 클래스에서 가져옴
    return Scaffold(
      body: Body(),
    );
  }
}
