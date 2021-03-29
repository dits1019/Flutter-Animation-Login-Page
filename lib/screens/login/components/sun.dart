import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class Sun extends StatelessWidget {
  //Sun
  const Sun({
    Key key,
    @required Duration duration,
    @required this.isFullSun,
  })  : _duration = duration,
        super(key: key);

  final Duration _duration;
  final bool isFullSun;

  @override
  Widget build(BuildContext context) {
    //Stack위젯에 자식의 위치를 제어하며
    //지정된 위치가 변경될 때마다 지정된 기간 동안 자녀의 위치를 자동으로 애니메이션
    return AnimatedPositioned(
      duration: _duration, //시간
      curve: Curves.easeInOut,
      left: getProportionateScreenWidth(30),
      bottom: getProportionateScreenWidth(isFullSun ? -45 : -120),
      child: SvgPicture.asset("assets/icons/Sun.svg"),
    );
  }
}
