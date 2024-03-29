import 'package:flutter/material.dart';
import 'package:handyman/constants.dart';
import 'package:handyman/size_config.dart';

import 'components/body.dart';

class ViewProviderMapScreen extends StatelessWidget {
  static String routeName = "/map_vendors";

  const ViewProviderMapScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kFormColor,
      appBar: AppBar(
        backgroundColor: kPrimaryBGColor,
        title: const Text(
          "Nearby Available",
          style: TextStyle(color: kTextColor),
        ),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
