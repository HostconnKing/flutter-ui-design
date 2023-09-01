import 'package:flutter/material.dart';
import 'package:flutter_ui_sedign/data.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _deviceHeight;
  var _deviceWidth;

  Widget _featuredGameWidget() {
    return SizedBox(
      height: _deviceHeight * 0.50,
      width: _deviceWidth,
      child: PageView(
          scrollDirection: Axis.horizontal,
          children: featuredGames.map((game) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(game.coverImage.url),
                ),
              ),
            );
          }).toList()),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[_featuredGameWidget()],
      ),
    );
  }
}
